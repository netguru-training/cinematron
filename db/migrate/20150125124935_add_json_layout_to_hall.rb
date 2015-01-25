class AddJsonLayoutToHall < ActiveRecord::Migration
  def change
    add_column :halls, :layout, :json, default: {}
  end
end
