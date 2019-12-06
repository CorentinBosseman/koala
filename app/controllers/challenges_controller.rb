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
    @challengers = @challenge.challengers.where(status: ['En attente', 'Accepté'])
    @challenger = @challenge.challengers.find_by(friend_id: current_user.id, status: ['En attente', 'Accepté'])


    if @challenger != nil && @challenger.status == 'En attente'
      render :show_invited
    elsif @challenger != nil && @challenger.status == 'Accepté'
      @friends_challengers = []
      @challengers.each do |challenger|
        if current_user.friends.include?(challenger.friend) && challenger.user_challenge.id == @challengers.find_by(friend_id: current_user.id).user_challenge.id
          @friends_challengers.push(challenger)
        end
      end
      render :show_ongoing
    else
      render :show # not started
    end
  end
end
