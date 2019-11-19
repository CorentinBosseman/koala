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
end
