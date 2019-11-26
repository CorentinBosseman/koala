class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all

    @challenges_food = @challenges.where(category: 'Nourriture').order(:position)
    @challenges_waste = @challenges.where(category: 'Déchets').order(:position)
    @challenges_energy = @challenges.where(category: 'Energie').order(:position)
    @challenges_transport = @challenges.where(category: 'Transport').order(:position)
  end

  def show
    @challenge = Challenge.find(params[:id])
    @user_challenge = UserChallenge.new
    @challengers = @challenge.challengers
    @challenger = @challenge.challengers.find_by(friend_id: current_user.id, status: ['En attente', 'Accepté'])

    if @challenger
      @ongoing_user_challenge = @challenger.user_challenge

      if @challenger.status == 'En attente'
        render :show_invited
      else
        render :show_ongoing
      end
    else
      render :show # not started
    end
  end
end

# si un challenge a été complété il faut lui apposer un marqueur
