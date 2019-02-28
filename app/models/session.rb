class Session < ApplicationRecord
  belongs_to :coach, class_name: :User, foreign_key: "coach_id"
  has_many :bookings
  # belongs_to :coach
  validates :title, presence: true
  validates :description, presence: true
end
