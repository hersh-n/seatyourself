class AddColumnToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :timeslot, :datetime
  end
end
