class ChangeTableReservationAssociation < ActiveRecord::Migration
  def change
  	add_column :tables, :reservation_id, :integer
  end
end
