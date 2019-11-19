class DashboardsController < ApplicationController
  def show
    @programs_ungoing = current_user.user_programs.where(completed: false)
    @challenges_ungoing = current_user.user_all_challenges.where(challengers: { status: 'Accepté' })
    @challengers = current_user.challengers.where(status: 'En attente')
  end
end
