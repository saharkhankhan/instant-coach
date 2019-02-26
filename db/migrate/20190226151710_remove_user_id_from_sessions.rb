class RemoveUserIdFromSessions < ActiveRecord::Migration[5.2]
  def change
    remove_column :sessions, :user_id
  end
end
