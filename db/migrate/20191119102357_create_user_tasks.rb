class CreateUserTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tasks do |t|
      t.string :completed
      t.references :task, foreign_key: true
      t.references :user_program, foreign_key: true

      t.timestamps
    end
  end
end
