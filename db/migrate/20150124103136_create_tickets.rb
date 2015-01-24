class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :type
      t.float :price
      t.timestamps
    end
  end
end
