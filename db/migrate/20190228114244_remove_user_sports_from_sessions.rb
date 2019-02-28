class RemoveUserSportsFromSessions < ActiveRecord::Migration[5.2]
  def change
    remove_column :sessions, :duration
    remove_column :sessions, :user_sport_id
  end
end
