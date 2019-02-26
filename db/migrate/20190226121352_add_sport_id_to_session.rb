class AddSportIdToSession < ActiveRecord::Migration[5.2]
  def change
    add_reference :sessions, :sport, foreign_key: true
  end
end
