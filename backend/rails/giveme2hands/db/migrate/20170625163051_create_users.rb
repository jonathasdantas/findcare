class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false, limit: 513
      t.boolean :active, default: false
      t.string :token
      t.string :password_digest, null: false
      t.boolean :blocked, default: false
      t.boolean :admin, default: false
      t.integer :views, default: 0
      t.date :date_of_birth
      t.datetime :suspended_at
      t.datetime :suspended_till
      t.datetime :first_seen_at
      t.datetime :last_seen_at
      t.datetime :last_emailed_at
      t.string :locale

      t.timestamps
    end
  end
end
