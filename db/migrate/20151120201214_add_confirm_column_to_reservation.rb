class AddConfirmColumnToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :confirmed, :boolean
    change_column_default :reservations, :confirmed, false

  end
end
