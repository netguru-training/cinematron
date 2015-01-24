class ChangeColumnsNameFromType < ActiveRecord::Migration
  def change
    rename_column :seats, :type, :seat_type
    rename_column :tickets, :type, :ticket_type
  end
end
