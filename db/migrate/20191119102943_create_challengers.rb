class CreateChallengers < ActiveRecord::Migration[5.2]
  def change
    create_table :challengers do |t|
      t.string :status
      t.references :challenge, foreign_key: true
      t.references :friend, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
