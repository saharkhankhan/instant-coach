class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  geocoded_by :address
  #geocode

  has_many :athlete_bookings, class_name: :Booking, foreign_key: "athlete_id"
  has_many :coach_sessions, class_name: :Session, foreign_key: "coach_id"
  # has_many :athlete_bookings, through: :coach_sessions, class_name: :Session, foreign_key: "coach_id"

  has_many :athlete_reviews, class_name: :Review, foreign_key: "athlete_id"
  has_many :coach_reviews, class_name: :Review, foreign_key: "coach_id"
  # removed athlete & coached sports
  has_many :user_sports, class_name: :UserSport, foreign_key: "user_id"

  validates :first_name, presence: true
  validates :last_name, presence: true
  # email & password validations are done by devices
  validates :address, presence: true
  # bio is not compulsory
  validates :user_image, presence: :true
  validates_length_of :bio, maximum: 150, allow_blank: true

  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :user_image, UserImageUploader


end
