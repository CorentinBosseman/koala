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
    @programs_food.disponible?
  end

  def show
    @program = Program.find(params[:id])
  end



# l'affichage des programmes change lorsque le programme est disponible ou pas
#   def disponible?
#     @programs_food.each do |program_food|
#       previous_program_index = @programs_food.index(program_food) - 1
#       if program_food != @programs_food.first && @programs_food[previous_program_index].status == "completed"
#         return true
#       else false
#       end
#     end
#   end
# end

# previous_program_index = @programs_food.index(program_food) - 1

  # tous les programmes à position 1 sont dispo
  # regardez le status du programme précédent (position -1) pour une même catégorie
  # si le status précédent est completed = ok
  # sinon le programme n'est pas disponible

# l'affichage d'un programme en cours change selon sa completion



