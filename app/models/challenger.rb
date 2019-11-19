class Challenger < ApplicationRecord
  belongs_to :challenge
  belongs_to :friend
end
