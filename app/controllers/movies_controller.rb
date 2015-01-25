class MoviesController < ApplicationController
  expose(:movies)
  expose(:movie)
  expose(:seats) { movie.seats }
  expose(:reservation_form) { ReservationForm.new }

  skip_before_action :authenticate_user, only: :index

  def index
  end

  def show
  end

end
