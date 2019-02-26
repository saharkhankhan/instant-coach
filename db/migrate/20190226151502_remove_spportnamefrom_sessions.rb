class RemoveSpportnamefromSessions < ActiveRecord::Migration[5.2]
  def change
    remove_column :sessions, :sport_name, :string
  end
end
