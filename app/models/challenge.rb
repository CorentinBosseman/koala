class Challenge < ApplicationRecord
  has_many :user_challenges
  has_many :challengers, through: :user_challenges

  mount_uploader :picture, PhotoUploader
end
