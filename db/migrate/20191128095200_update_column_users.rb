class UpdateColumnUsers < ActiveRecord::Migration[5.2]
  def change
     remove_column :users, :level, :integer
    add_column :users, :level, :integer, :default => 1
    remove_column :users, :points, :integer
    add_column :users, :points, :integer, :default => 0
  end
end
