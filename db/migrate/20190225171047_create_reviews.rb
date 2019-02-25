class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :athlete_id, foreign_key: true
      t.integer :coach_id, foreign_key: true

      t.timestamps
    end
  end
end
