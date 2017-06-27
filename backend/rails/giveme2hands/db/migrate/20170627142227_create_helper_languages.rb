class CreateHelperLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :helper_languages do |t|
      t.integer :helper_id, null: false
      t.integer :language_id, null: false

      t.timestamps
    end
  end
end
