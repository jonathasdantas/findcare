class CreateLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :languages do |t|
      t.string :name
      t.integer :language_level_id
      t.string :country

      t.timestamps
    end
  end
end
