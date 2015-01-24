class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :type
      t.references :hall, index: true
    end
  end
end
