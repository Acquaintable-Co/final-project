class CreateHighlights < ActiveRecord::Migration[5.2]
  def change
    create_table :highlights do |t|
      t.string :highlight_detail
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
