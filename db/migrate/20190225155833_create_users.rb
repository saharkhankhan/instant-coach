class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :coach
      t.string :username
      t.string :password
      t.string :location
      t.text :bio

      t.timestamps
    end
  end
end
