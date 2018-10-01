class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :email
      t.password_digest :password
      t.string :name
      t.string :restaurant
      t.string :address
      t.string :phone
      t.string :website
      t.string :hours

      t.timestamps
    end
  end
end
