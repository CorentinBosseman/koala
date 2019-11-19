class CreateProgrammes < ActiveRecord::Migration[5.2]
  def change
    create_table :programmes do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :picture
      t.integer :position

      t.timestamps
    end
  end
end
