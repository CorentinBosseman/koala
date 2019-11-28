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

       unless outdated_challengers.blank?
          outdated_challengers.each do |challenge|
            if challenge.user_challenge.duration == 7
              current_user.update(points: (current_user.points + 100))
              recalculate_level!
            elsif challenge.user_challenge.duration == 14
              current_user.update(points: (current_user.points + 200))
              recalculate_level!
            elsif challenge.user_challenge.duration == 28
              current_user.update(points: (current_user.points + 500))
              recalculate_level!
            end
          end
      end
    outdated_challengers.update_all(status: 'Réussi')
  end

  def recalculate_level!
    current_user.update(level: User.level_from_points(current_user.points))
  end


end
