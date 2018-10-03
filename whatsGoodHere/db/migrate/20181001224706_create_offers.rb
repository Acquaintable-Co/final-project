class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :offer_detail
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
