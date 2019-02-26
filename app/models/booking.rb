class Booking < ApplicationRecord
  belongs_to :user # can change this to refer to athlete/coach
  has_one :session, dependent: :destroy
end
