class Challenge < ApplicationRecord
  has_many :user_challenges

  mount_uploader :picture, PhotoUploader
end
