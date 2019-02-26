class RenameSportsIdInSessions < ActiveRecord::Migration[5.2]
  def change
    rename_column :sessions, :sports_id, :user_sport_id
  end
end
