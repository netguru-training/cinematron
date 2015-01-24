class Reservation < ActiveRecord::Base

  validates :fullname, :email, :movie_id, presence: true

end
