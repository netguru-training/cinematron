class ReservationForm
  include SimpleFormObject

  attribute :ticket_id, :string
  attribute :email, :string
  attribute :fullname, :string
  attribute :seat_id, :string

  validates_presence_of :email, :fullname

  def save
    if valid?
      reservation = Reservation.create(reservation_params)
      reservation.reservation_details.create(reservation_detail_params)
    end
  end

  private

  def ticket(id)
    Ticket.find(id)
  end

  def reservation_params
    {
        email: email,
        fullname: fullname,
        movie_id: ticket(ticket_id).movie.id
    }
  end

  def reservation_detail_params
    {
        seat_id: seat_id,
        ticket_id: ticket_id
    }
  end

end
