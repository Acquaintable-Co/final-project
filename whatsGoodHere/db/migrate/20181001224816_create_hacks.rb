class CreateHacks < ActiveRecord::Migration[5.2]
  def change
    create_table :hacks do |t|
      t.string :hack_detail
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
