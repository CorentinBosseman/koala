class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :friendships
  has_many :user_programs
  has_many :user_challenges

  has_many :challengers, foreign_key: :friend_id
  has_many :user_all_challenges, through: :challengers, source: :user_challenge

  mount_uploader :avatar, PhotoUploader

  def friends
    relationships = Friendship.where("user_id = :id OR friend_id = :id", id: id).where(status: "Accepted")
    friend_ids    = relationships.map(&:user_id) + relationships.map(&:friend_id)
    User.where.not(id: id).where(id: friend_ids.uniq)
  end
end
