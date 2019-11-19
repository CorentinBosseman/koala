class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :picture
      t.integer :position

      t.timestamps
    end
  end
end
