class AddAttributesToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :rating, :float
    add_column :restaurants, :cost, :integer
    add_column :restaurants, :cuisine, :string
  end
end
