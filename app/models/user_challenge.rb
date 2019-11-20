class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge

  has_many :challengers
end
