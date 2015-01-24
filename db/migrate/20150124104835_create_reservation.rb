class CreateReservation < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :fullname
      t.string :email
      t.timestamps
    end
    add_reference :reservations, :movie, index: true
  end
end
