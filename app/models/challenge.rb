class Challenge < ApplicationRecord
  has_many :Challengers

  mount_uploader :picture, PhotoUploader
end
