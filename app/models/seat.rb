class Seat < ActiveRecord::Base
  belongs_to :hall
  enum seat_type: [:alley, :free, :reserved]

  validates :seat_type, inclusion: { in: Seat.seat_types.keys}
end
