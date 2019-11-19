class CreateUserChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :user_challenges do |t|
      t.integer :duration
      t.date :start_date
      t.date :end_date
      t.references :user, foreign_key: true
      t.references :challenge, foreign_key: true

      t.timestamps
    end
  end
end
