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
  end

end



