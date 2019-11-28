class DashboardsController < ApplicationController
  before_action :check_challenger_status

  def show
    @programs_ungoing = current_user.user_programs.where(completed: false)
    @challenges_ungoing = current_user.user_all_challenges.where(challengers: { status: 'Accepté' })
    @challengers = current_user.challengers.where(status: 'En attente')
  end

  private

  def check_challenger_status
    outdated_challengers = current_user.challengers.
      joins(:user_challenge).
      where(status: 'Accepté').
      where('user_challenges.end_date < ?', Date.today)

    outdated_challengers.update_all(status: 'Réussi')
  end
end
