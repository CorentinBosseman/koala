class ChallengersController < ApplicationController
  def accept
  end

  def decline
  end

  def abort
    @challenger = Challenger.find(params[:id])
    @challenger.status = "Abandonné"
    @challenger.save
    redirect_to dashboard_path
  end
end
