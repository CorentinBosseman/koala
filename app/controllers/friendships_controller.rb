class FriendshipsController < ApplicationController
  def index

    @friendships_accepted = current_user.friendships.where(status: "Accepted")
    @friendships_pending = current_user.friendships.where(status: "Pending")
  end

  def new
    @friendship = Friendship.new
  end

  # def create
  #   @friendship = Friendship.new
  #   @friendship
  #   @friendship.user = current_user
  #   hello = User.all.where(pseudo: "#{friendship_params}")
  #   @friendship.friend = hello
  #   @friendship.save
  #   redirect_to friendships_path
  # end

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

  # def friendship_params
  #   params.require(:friendship).permit(:pseudo)
  # end
end
