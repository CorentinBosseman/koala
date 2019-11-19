class Program < ApplicationRecord
  has_many :tasks
  has_many :user_programs
end
