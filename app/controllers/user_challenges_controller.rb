class UserChallengesController < ApplicationController
  def create
    @challenge = Challenge.find(params[:challenge_id])
    @user_challenge = UserChallenge.new(user_challenge_params)
    @user_challenge.start_date = Date.today
    @user_challenge.end_date = Date.today + @user_challenge.duration
    @user_challenge.user = current_user
    @user_challenge.challenge = @challenge
    @user_challenge.challengers.new(friend: current_user, status: "Accepté")
    @user_challenge.save

    redirect_to new_user_challenge_challengers_invitation_path(@user_challenge)
  end

  private

  def user_challenge_params
    params.require(:user_challenge).permit(:duration)
  end
end
