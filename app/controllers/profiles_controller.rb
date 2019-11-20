class ProfilesController < ApplicationController
  def show
    @programs_completed = current_user.user_programs.where(completed: true)
    @challenges_completed = current_user.user_all_challenges.where(challengers: { status: 'Réussi' })
  end
end
