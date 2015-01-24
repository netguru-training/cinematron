class AddRefToTicketsAndMovies < ActiveRecord::Migration
  def change
    add_reference :tickets, :movie, index: true
  end
end
