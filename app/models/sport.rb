class Sport < ApplicationRecord
  has_many :user_sports, class_name: :UserSport, foreign_key: "sport_id"
end
