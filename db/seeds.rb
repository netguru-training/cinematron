# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movie = Movie.create({ title: 'Matrix', description: '01001100' })
ticket = Ticket.create({ ticket_type: 'child2D', price: 12.23, movie_id: movie.id })
reservation = Reservation.create({ fullname: 'John Doe', email: 'hello@hello.com', movie_id: movie.id })
hall = Hall.create({ movie_id: movie.id })
seat = Seat.create({ hall_id: hall.id, seat_type: 1 })
reservation_details = ReservationDetails.create({ ticket_id: ticket.id, seat_id: seat.id, reservation_id: reservation.id })
admin_user = AdminUser.create({ email: 'hello@hello.com', password: 'hello123'})