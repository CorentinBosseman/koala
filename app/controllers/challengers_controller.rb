class ChallengersController < ApplicationController
  def accept
    @challenger = Challenger.find(params[:id])
    @challenger.status = "Accepté"
    @challenger.save
    redirect_to challenge_path(@challenger.user_challenge.challenge)
  end

  def decline
     @challenger = Challenger.find(params[:id])
    @challenger.status = "Refusé"
    @challenger.save
    redirect_to dashboard_path
  end

  def abort
    @challenger = Challenger.find(params[:id])
    @challenger.status = "Abandonné"
    @challenger.save
    redirect_to dashboard_path
  end
end
