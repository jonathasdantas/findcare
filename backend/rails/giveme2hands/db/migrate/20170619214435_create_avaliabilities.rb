class CreateAvaliabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :avaliabilities do |t|
      t.string :name

      t.timestamps
    end
  end
end
