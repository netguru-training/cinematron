class CreateReservationDetails < ActiveRecord::Migration
  def change
    create_table :reservation_details do |t|
      t.references :ticket, index: true
      t.references :seat, index: true
      t.references :reservation, index: true
    end
  end
end
