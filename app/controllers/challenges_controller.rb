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
    @user_challenge.challenge = @challenge
    @challengers = @challenge.challengers.where(status: ['En attente', 'Accepté'])
    @friends_challengers = []
    @challengers.each do |challenger|
      @friends_challengers.push(challenger) if current_user.friends.include?(challenger.friend) && challenger.user_challenge == @challenge.challengers.find_by(friend_id: current_user.id).user_challenge
    end
    @challenger = @challenge.challengers.find_by(friend_id: current_user.id, status: ['En attente', 'Accepté'])
    console
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
