class Reservation < ActiveRecord::Base
  has_many :reservation_details, class_name: 'ReservationDetail'
  has_many :tickets, through: :reservation_details
  has_many :seats, through: :reservation_details

  validates :fullname, :email, :movie_id, presence: true
end
