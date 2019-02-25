class User < ApplicationRecord
  has_many :bookings, :sessions, :reviews, :coached_sports, :athlete_sports
end
