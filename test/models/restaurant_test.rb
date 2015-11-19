require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
  	@restaurant = FactoryGirl.create(:restaurant)
  	@time = DateTime.new(2016,1,1,19)

  	@table1 = FactoryGirl.create(:table, restaurant: @restaurant)
    @table2 = FactoryGirl.create(:table, restaurant: @restaurant)
    @table3 = FactoryGirl.create(:table, restaurant: @restaurant)
	end

  test "restaurant is available" do
    assert_equal @restaurant.get_current_capacity(@time), 6
  end

  test "restaurant has room for a party of 2 (one table)" do
    assert @restaurant.find_tables_for_party(2,@time)
  end

  test "restaurant has room for a party of 5 (three tables)" do
    assert @restaurant.find_tables_for_party(5,@time)
  end
end