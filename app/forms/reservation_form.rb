class ReservationForm
  include SimpleFormObject

  attribute :ticket_id, :integer
  attribute :email, :string
  attribute :fullname, :string
  attribute :seat_id, :integer
  attribute :user_id, :integer

  def save
    reservation = Reservation.create(reservation_params)
    reservation.reservation_details.create(reservation_detail_params)
  end

  private

  def ticket(id)
    Ticket.find(id)
  end

  def reservation_params
    {
      email: current_user.email,
      fullname: current_user.fullname,
      movie_id: ticket(ticket_id).movie.id
    }
  end

  def reservation_detail_params
    {
      seat_id: seat_id,
      ticket_id: ticket_id
    }
  end

  def current_user
    User.find(user_id)
  end
end
