class RenameProgram < ActiveRecord::Migration[5.2]
  def change
    rename_table :programmes, :programs
  end
end
