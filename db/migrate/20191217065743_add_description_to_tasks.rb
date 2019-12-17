class AddDescriptionToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :description, :text
  end
end
