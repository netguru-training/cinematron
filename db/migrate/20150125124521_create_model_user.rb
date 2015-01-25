class CreateModelUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :email
      t.string :provider
      t.string :uid
      t.timestamps
    end
  end
end
