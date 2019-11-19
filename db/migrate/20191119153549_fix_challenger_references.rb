class FixChallengerReferences < ActiveRecord::Migration[5.2]
  def change
    remove_reference :challengers, :challenge
    add_reference :challengers, :user_challenge, foreign_key: true
  end
end
