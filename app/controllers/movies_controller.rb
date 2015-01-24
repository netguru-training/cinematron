class MoviesController < ApplicationController
  expose(:movies)
  expose(:movie)

  expose(:seats) { movie.seats } 

  def index
  end

  def show
  end
end