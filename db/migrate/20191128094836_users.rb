class Users < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :level, :integer
    add_column :users, :points, :integer

  end
end
