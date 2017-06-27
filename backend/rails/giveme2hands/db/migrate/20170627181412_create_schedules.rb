class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.datetime :begin
      t.datetime :end
      t.integer :user_id
      t.integer :helper_id

      t.timestamps
    end
  end
end
