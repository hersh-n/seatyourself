class DeleteTableIdColumnFromReservation < ActiveRecord::Migration
  def change
  	remove_column :reservations, :table_id
  end
end
