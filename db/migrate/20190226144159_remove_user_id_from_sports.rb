class RemoveUserIdFromSports < ActiveRecord::Migration[5.2]
  def change
    remove_column :sports, :user_id
  end
end
