class Program < ApplicationRecord
  has_many :tasks
  has_many :user_programs
  mount_uploader :picture, PhotoUploader
  mount_uploader :icon, PhotoUploader
end
