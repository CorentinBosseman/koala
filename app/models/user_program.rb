class UserProgram < ApplicationRecord
  belongs_to :user
  belongs_to :program
  has_many :user_tasks
end
