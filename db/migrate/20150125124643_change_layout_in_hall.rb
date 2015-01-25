class ChangeLayoutInHall < ActiveRecord::Migration
  def change
    remove_column :halls, :layout, :text
  end
end
