class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :bookings
  has_many :sessions
  has_many :athlete_reviews, class_name: :Review, foreign_key: "athlete_id"
  has_many :coach_reviews, class_name: :Review, foreign_key: "coach_id"
  has_many :coached_sports
  has_many :athlete_sports

  validates :first_name, presence: true
  validates :last_name, presence: true
  # email & password validations are done by devices
  validates :location, presence: true
  # bio is not compulsory
  validates_length_of :bio, maximum: 5, allow_blank: true
end
