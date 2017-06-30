class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :skill_group_id
      t.boolean :specific
      t.boolean :extra

      t.timestamps
    end
  end
end
