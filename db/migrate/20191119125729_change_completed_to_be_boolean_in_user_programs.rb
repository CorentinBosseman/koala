class ChangeCompletedToBeBooleanInUserPrograms < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_programs, :completed, :string
    add_column :user_programs, :completed, :boolean, :default => false
  end
end
