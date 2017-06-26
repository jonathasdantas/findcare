class CreateQualifications < ActiveRecord::Migration[5.0]
  def change
    create_table :qualifications do |t|
      t.string :name
      t.date :issue_date

      t.timestamps
    end
  end
end
