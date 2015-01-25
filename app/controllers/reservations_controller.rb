class ReservationsController < ApplicationController
  expose(:reservation_form) { ReservationForm.new(reservation_params) }

  def create
    if reservation_form.save
      redirect_to root_path, notice: 'yay'
    end
  end

  def destroy
  end

  private

  def reservation_params
    params.require(:reservation).permit(:seat_id, :ticket_id, :email, :fullname)
  end
end