class UserSport < ApplicationRecord
  # belongs_to :user, class_name: :User, foreign_key: "user_id"
  # belongs_to :sport, class_name: :Sport, foreign_key: "sport_id"

  # validates :user_id, presence: true
  # validates :sport_id, presence: true
  # validates :user_id, :uniqueness => { :scope => :sport_id }
  belongs_to :user
  belongs_to :sport
end
