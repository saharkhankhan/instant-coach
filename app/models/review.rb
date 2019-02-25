class Review < ApplicationRecord
  belongs_to :athlete, class_name: :User, foreign_key: "athlete_id"
  belongs_to :coach, class_name: :User, foreign_key: "coach_id"
end
