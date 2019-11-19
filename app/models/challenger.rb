class Challenger < ApplicationRecord
  belongs_to :challenge
  belongs_to :friend, class_name: "User"
end
