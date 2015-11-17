class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :capacity
      t.datetime :timeslot
      t.boolean :booked
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
