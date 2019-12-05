class ProgramsController < ApplicationController
  def index

      @programs = Program.
      select(
        <<~SQL
          programs.*,
          CASE user_programs.completed
            WHEN true  THEN 'completed'
            WHEN false THEN 'ongoing'
            ELSE 'not started'
          END AS status,
        completed
        SQL
      ).
      left_joins(:user_programs).
      where(user_programs: { user_id: [nil, current_user.id] })


    @programs_food = @programs.where(category: 'Nourriture').order(:position)
    @programs_waste = @programs.where(category: 'Déchets').order(:position)
    @programs_energy = @programs.where(category: 'Energie').order(:position)
    @programs_transport = @programs.where(category: 'Transport').order(:position)
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



