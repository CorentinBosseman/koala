class ProgramsController < ApplicationController
  def index
  custom_query = <<~SQL
    SELECT programs.*,
    CASE user_programs.completed
    WHEN true  THEN 'completed'
    WHEN false THEN 'ongoing'
    ELSE 'not started'
    END AS status,
    completed
    FROM programs
    LEFT OUTER JOIN user_programs
    ON user_programs.program_id = programs.id
    AND user_programs.user_id = ?
  SQL
    @programs = Program.find_by_sql([custom_query, current_user.id])

     @programs_food      = @programs.select { |p| p.category == 'Nourriture' }.sort_by(&:position)
    @programs_waste     = @programs.select { |p| p.category == 'Déchets' }.sort_by(&:position)
    @programs_energy    = @programs.select { |p| p.category == 'Energie' }.sort_by(&:position)
    @programs_transport = @programs.select { |p| p.category == 'Transport' }.sort_by(&:position)
  end

  def show
    @program = Program.find(params[:id])
    @ongoing_user_program = @program.user_programs.find_by(user_id: current_user.id)

    if @ongoing_user_program
      @tasks = @program.tasks.
        select(
          <<~SQL
            tasks.*,
            CASE user_tasks.completed
              WHEN true  THEN 'completed'
              WHEN false tHEN 'ongoing'
              ELSE 'not started'
            END AS status,
            user_tasks.id AS user_task_id,
            user_tasks.completed
          SQL
        ).
        left_joins(user_tasks: :user_program).
        where(user_programs: { user_id: [nil, current_user.id] }).
        order(:position)
      @tasks_completed = @tasks.count(&:completed)

      render :show_ongoing
    else
      @user_program = UserProgram.new
      render :show # not started
    end
  end
end



