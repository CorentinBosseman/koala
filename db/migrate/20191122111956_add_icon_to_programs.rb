class AddIconToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :icon, :string
  end
end
