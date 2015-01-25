class AddLayoutFieldToHall < ActiveRecord::Migration
  def change
    add_column :halls, :layout, :text, array: true, default: []
  end
end
