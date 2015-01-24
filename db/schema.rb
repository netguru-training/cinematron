# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150124140834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "halls", force: true do |t|
    t.integer "movie_id"
  end

  add_index "halls", ["movie_id"], name: "index_halls_on_movie_id", using: :btree

  create_table "movies", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservation_details", force: true do |t|
    t.integer "ticket_id"
    t.integer "seat_id"
    t.integer "reservation_id"
  end

  add_index "reservation_details", ["reservation_id"], name: "index_reservation_details_on_reservation_id", using: :btree
  add_index "reservation_details", ["seat_id"], name: "index_reservation_details_on_seat_id", using: :btree
  add_index "reservation_details", ["ticket_id"], name: "index_reservation_details_on_ticket_id", using: :btree

  create_table "reservations", force: true do |t|
    t.string   "fullname"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "movie_id"
  end

  add_index "reservations", ["movie_id"], name: "index_reservations_on_movie_id", using: :btree

  create_table "seats", force: true do |t|
    t.integer "seat_type"
    t.integer "movie_id"
  end

  add_index "seats", ["movie_id"], name: "index_seats_on_movie_id", using: :btree

  create_table "tickets", force: true do |t|
    t.string   "ticket_type"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "movie_id"
  end

  add_index "tickets", ["movie_id"], name: "index_tickets_on_movie_id", using: :btree

end
