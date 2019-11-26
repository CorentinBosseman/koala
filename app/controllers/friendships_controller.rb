class FriendshipsController < ApplicationController
  def index

    @friends             = current_user.friends
    @friendships_pending = Friendship.where(status: "Pending", friend: current_user)
  end

  def new
    @friendship = Friendship.new
  end

  def create
    @friendship = Friendship.new
    @friendship.user = current_user
    hello = User.find_by(pseudo: friendship_params[:friend])

    @friendship.friend = hello
    @friendship.status = "Pending"
    flash[:notice] = "coucou"
    @friendship.save
    redirect_to friendships_path
  end

  def accept
      @friendship = Friendship.find(params[:id])
      @friendship.status = "Accepted"
      @friendship.save
      redirect_to friendships_path
  end

  def decline
      @friendship = Friendship.find(params[:id])
      @friendship.status = "Declined"
      @friendship.save
      redirect_to friendships_path
  end

private

  def friendship_params
    params.require(:friendship).permit(:friend)
  end
end
