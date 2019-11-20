class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.
      select(
        <<~SQL
          challenges.*,
          COALESCE(challengers.status, 'not started') AS status
        SQL
      ).
      left_joins(user_challenges: :challengers).
      where(challengers: { friend_id: [nil, current_user.id] })

    @challenges_food = @challenges.where(category: 'Nourriture').order(:position)
    @challenges_waste = @challenges.where(category: 'Déchets').order(:position)
    @challenges_energy = @challenges.where(category: 'Energie').order(:position)
    @challenges_transport = @challenges.where(category: 'Transport').order(:position)
  end

  def show
    @challenge = Challenge.find(params[:id])
    @user_challenge = UserChallenge.new

    @challenger = @challenge.challengers.find_by(friend_id: current_user.id, status: 'Accepté')

    if @challenger
      @ongoing_user_challenge = @challenger.user_challenge
      render :show_ongoing
    else
      render :show # not started
    end
  end
end

# si un challenge a été complété il faut lui apposer un marqueur
