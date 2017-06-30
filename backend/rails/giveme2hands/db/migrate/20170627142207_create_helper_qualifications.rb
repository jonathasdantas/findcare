class CreateHelperQualifications < ActiveRecord::Migration[5.0]
  def change
    create_table :helper_qualifications do |t|
      t.integer :helper_id, null: false
      t.integer :qualification_id, null: false
      t.date :issue_date

      t.timestamps
    end
  end
end
