class CreateEducationFields < ActiveRecord::Migration[5.0]
  def change
    create_table :education_fields do |t|
      t.string :name

      t.timestamps
    end
  end
end
