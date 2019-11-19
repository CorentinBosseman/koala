class Challenger < ApplicationRecord
  belongs_to :user_challenge
  belongs_to :friend, class_name: "User"

  validates :status, inclusion: { in: ['En attente', 'Accepté', 'Refusé', 'Abandonné', 'Réussi'] }
end
