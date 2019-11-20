class UserChallenge < ApplicationRecord
  DURATIONS = [7, 14, 28]

  belongs_to :user
  belongs_to :challenge

  has_many :challengers

  validates :duration, inclusion: { in: DURATIONS }
end
