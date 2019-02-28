class AddTitleAndDescriptionToSessions < ActiveRecord::Migration[5.2]
  def change
    add_column :sessions, :title, :string
    add_column :sessions, :description, :text
  end
end
