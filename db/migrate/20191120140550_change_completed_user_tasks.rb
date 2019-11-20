class ChangeCompletedUserTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_tasks, :completed, :string
    add_column :user_tasks, :completed, :boolean, :default => false
  end
end
