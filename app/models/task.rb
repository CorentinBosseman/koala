class Task < ApplicationRecord
  belongs_to :program
  has_many :user_tasks
end
