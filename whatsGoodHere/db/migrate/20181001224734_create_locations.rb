class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :location_detail
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
