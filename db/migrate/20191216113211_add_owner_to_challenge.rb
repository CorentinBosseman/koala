class AddOwnerToChallenge < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges , :owner, :integer
  end
end
