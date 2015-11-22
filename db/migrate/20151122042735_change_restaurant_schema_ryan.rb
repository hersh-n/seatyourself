class ChangeRestaurantSchemaRyan < ActiveRecord::Migration
  def change
    add_column :restaurants, :open_time_monday, :datetime,
    add_column :restaurants, :closed_time_monday, :datetime
    add_column :restaurants, :open_time_tuesday, :datetime
    add_column :restaurants, :closed_time_tuesday, :datetime
    add_column :restaurants, :open_time_wednesday, :datetime
    add_column :restaurants, :closed_time_wednesday, :datetime
    add_column :restaurants, :open_time_thursday, :datetime
    add_column :restaurants, :closed_time_thursday, :datetime
    add_column :restaurants, :open_time_friday, :datetime
    add_column :restaurants, :closed_time_friday, :datetime
    add_column :restaurants, :open_time_saturday, :datetime
    add_column :restaurants, :closed_time_saturday, :datetime
    add_column :restaurants, :open_time_sunday, :datetime
    add_column :restaurants, :closed_time_sunday, :datetime

    set_default :restaurants, :open_time_monday, nil
    set_default :restaurants, :closed_time_monday, nil
    set_default :restaurants, :open_time_tuesday, nil
    set_default :restaurants, :closed_time_tuesday, nil
    set_default :restaurants, :open_time_wednesday, nil
    set_default :restaurants, :closed_time_wednesday, nil
    set_default :restaurants, :open_time_thursday, nil
    set_default :restaurants, :closed_time_thursday, nil
    set_default :restaurants, :open_time_friday, nil
    set_default :restaurants, :closed_time_friday, nil
    set_default :restaurants, :open_time_saturday, nil
    set_default :restaurants, :closed_time_saturday, nil
    set_default :restaurants, :open_time_sunday, nil
    set_default :restaurants, :closed_time_sunday, nil
  end
end
