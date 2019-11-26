class ChallengersInvitationsController < ApplicationController
  def new
    @friends        = current_user.friends
    @user_challenge = UserChallenge.find(params[:user_challenge_id])
    @challenge      = @user_challenge.challenge
  end
  def create
    @user_challenge = UserChallenge.find(params[:user_challenge_id])
    if params[:challengers] != nil
    params[:challengers].each do |challenger|
      user = User.find(challenger.to_i)
      Challenger.create(
        friend: user,
        user_challenge: @user_challenge,
        status: 'En attente'
      )
      end
      redirect_to challenge_path(@user_challenge.challenge)
    else
    redirect_to challenge_path(@user_challenge.challenge)
    end
  end
end
