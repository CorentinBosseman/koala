class AddIconToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :icon, :string
  end
end
