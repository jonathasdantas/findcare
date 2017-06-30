class CreateHelperSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :helper_skills do |t|
      t.integer :helper_id, null: false
      t.integer :skill_id, null: false
      t.integer :experience_id, null: false

      t.timestamps
    end
  end
end
