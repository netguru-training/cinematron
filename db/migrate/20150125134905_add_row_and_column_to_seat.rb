class AddRowAndColumnToSeat < ActiveRecord::Migration
  def change
    add_column :seats, :row, :integer
    add_column :seats, :column, :integer
  end
end
