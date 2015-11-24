class ChangeTablesSchemaRyan < ActiveRecord::Migration
  def change
    remove_column :tables, :reservation_id
    remove_column :tables, :timeslot
    remove_column :tables, :booked
  end
end
