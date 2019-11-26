class ChallengersInvitationsController < ApplicationController
  def new
    @user_challenge = UserChallenge.find(params[:user_challenge_id])
    @challenge      = @user_challenge.challenge
  end
end
