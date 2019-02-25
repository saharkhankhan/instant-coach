class Booking < ApplicationRecord
  belongs_to :user # can change this to refer to athlete/coach
  belongs_to :session
end
