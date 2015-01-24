class Movie < ActiveRecord::Base

  has_many :seats, dependent: :destroy

  after_create :generate_seats

  def generate_seats
   transaction do
      100.times do
        Seat.create(seat_type: 0, movie: self)
      end
   end
  end

end
