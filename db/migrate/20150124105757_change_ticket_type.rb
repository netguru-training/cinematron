class ChangeTicketType < ActiveRecord::Migration
  def change
    change_column :tickets, :type, :string
  end
end
