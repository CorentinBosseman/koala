class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pseudo, :string
    add_column :users, :avatar, :string
  end
end
