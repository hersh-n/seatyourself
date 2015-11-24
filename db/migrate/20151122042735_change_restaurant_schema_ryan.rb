class ChangeRestaurantSchemaRyan < ActiveRecord::Migration
  def change
    add_column :restaurants, :open_time_monday, :time
    add_column :restaurants, :closed_time_monday, :time
    add_column :restaurants, :open_time_tuesday, :time
    add_column :restaurants, :closed_time_tuesday, :time
    add_column :restaurants, :open_time_wednesday, :time
    add_column :restaurants, :closed_time_wednesday, :time
    add_column :restaurants, :open_time_thursday, :time
    add_column :restaurants, :closed_time_thursday, :time
    add_column :restaurants, :open_time_friday, :time
    add_column :restaurants, :closed_time_friday, :time
    add_column :restaurants, :open_time_saturday, :time
    add_column :restaurants, :closed_time_saturday, :time
    add_column :restaurants, :open_time_sunday, :time
    add_column :restaurants, :closed_time_sunday, :time
  end
end
