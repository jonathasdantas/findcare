class CreateUserReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :user_reviews do |t|
      t.integer :user_id
      t.decimal :rating, scale: 2, precision: 2

      t.timestamps
    end
  end
end
