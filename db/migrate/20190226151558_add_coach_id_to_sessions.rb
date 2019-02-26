class AddCoachIdToSessions < ActiveRecord::Migration[5.2]
  def change
    add_column :sessions, :coach_id, :integer
  end
end
