class RenameUserIdInBookings < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :user_id, :athlete_id
  end
end
