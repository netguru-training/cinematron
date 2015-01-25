class Seat < ActiveRecord::Base
  enum seat_type: { alley: 0, free: 1, reserved: 2 }
  
  belongs_to :hall

  validates :seat_type, inclusion: { in: Seat.seat_types.keys}
end
