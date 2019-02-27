class AddAvailabiltyToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :availability, :boolean
  end
end
