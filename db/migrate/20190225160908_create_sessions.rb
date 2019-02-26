class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :sport_name
      t.integer :duration
      t.references :user, foreign_key: true
      t.references :sports, foreign_key: true

      t.timestamps
    end
  end
end
