class CreateUserPrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :user_programs do |t|
      t.string :completed
      t.references :user, foreign_key: true
      t.references :program, foreign_key: true

      t.timestamps
    end
  end
end
