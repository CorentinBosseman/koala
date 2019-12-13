class FriendshipsController < ApplicationController
  before_action :set_friendship, only: [:accept, :decline]

  def index
    @friends             = current_user.friends
    @friendships_pending = Friendship.where(status: "Pending", friend: current_user)
  end

  def new
    @friendship = Friendship.new
  end

  def create
    @friendship = Friendship.new(friendship_params)
    @friendship.user = current_user
    @friendship.status = "Pending"
    @friendship.save
    flash[:notice] = "Invitation envoyée!"
    redirect_to friendships_path
  end

  def accept
      @friendship.status = "Accepted"
      @friendship.save
      redirect_to friendships_path
  end

  def decline
      @friendship.status = "Declined"
      @friendship.save
      redirect_to friendships_path
  end

private

  def set_friendship
    @friendship = Friendship.find(params[:id])
  end

  def friendship_params
    params.require(:friendship).permit(:friend_id, :user_id)
  end
end
