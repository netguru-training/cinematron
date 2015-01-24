class Reservation < ActiveRecord::Base
  has_many :reservation_details
  has_many :tickets, throught: :reservation_details
  has_many :seats, throught: :reservation_details

  validates :fullname, :email, :movie_id, presence: true
end
