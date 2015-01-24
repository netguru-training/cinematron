class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :type
      t.references :movie, index: true
    end
  end
end
