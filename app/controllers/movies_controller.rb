class MoviesController < ApplicationController
  expose(:movies)
  expose(:movie)
  expose(:seats) { movie.seats }
  expose(:reservation_form) { ReservationForm.new }

  def index
  end

  def show
  end
end
