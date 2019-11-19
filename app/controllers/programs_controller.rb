class ProgramsController < ApplicationController
  def index
    @programs = Program.
      select(<<~SQL
        programs.*,
        CASE user_programs.completed
          WHEN true  THEN 'completed'
          WHEN false THEN 'ongoing'
          ELSE 'not started'
        END AS status
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


# l'affichage des programmes change lorsque le programme est disponible ou pas


# l'affichage d'un programme en cours change selon sa completion


# l'affichage d'un programme termine avec un marqueur
  # si le programme en particulier se trouve dans le user_program et qu'il a le statut = completed
  # @user_programs_done = @user_programs.where(completed: true)
  #   if @user_programs_done.include?(@program.title)

