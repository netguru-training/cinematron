class CreateHalls < ActiveRecord::Migration
  def change
    create_table :halls do |t|
      t.references :movie, index: true
    end
  end
end
