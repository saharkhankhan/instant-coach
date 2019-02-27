class RenameLocationToAddress < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :location, :address
  end
end
