class ReservationDetails < ActiveRecord::Base
  belongs_to :seat
  belongs_to :reservation
  belongs_to :ticket
end
