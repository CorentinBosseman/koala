class Challenge < ApplicationRecord
  has_many :user_challenges
  has_many :challengers, through: :user_challenges
  mount_uploader :icon, PhotoUploader
  mount_uploader :picture, PhotoUploader

  validates :title, presence: true
  validates :description, presence: true

end
