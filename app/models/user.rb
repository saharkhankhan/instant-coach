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
end
