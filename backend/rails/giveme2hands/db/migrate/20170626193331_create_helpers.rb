class CreateHelpers < ActiveRecord::Migration[5.0]
  def change
    create_table :helpers do |t|
      t.integer :user_id, null: false
      t.string :aboutme, null: false
      t.string :objectives, null: false
      t.string :location
      t.string :phone, null: false
      t.integer :education_level_id, null: false
      t.integer :education_field_id, null: false
      t.string :education_place, null: false
      t.integer :avaliability_id, null: false

      t.timestamps
    end
  end
end
