class Booking < ApplicationRecord
  # belongs_to :user
  # can change this to refer to athlete/coach
  belongs_to :athlete, class_name: :User, foreign_key: "athlete_id"

  belongs_to :session
end
