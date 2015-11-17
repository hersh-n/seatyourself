class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :party_size
      t.integer :table_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
