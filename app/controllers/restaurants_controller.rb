class RestaurantsController < ApplicationController

	def index
  	@restaurants = Restaurant.all
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
  end

  def new
  	@restaurant = Restaurant.new
  end

  def create
  	@restaurant = Restaurant.new(restaurant_params)
  	if @restaurant.save then
  		redirect_to restaurant_path(@restaurant), notice: "#{@restaurant.name} created successfully."
  end

  def edit
  	@restaurant = Restaurant.find(params[:id])
  end

  def update
  	if @restaurant.update_attributes(restaurant_params)
  		redirect_to restaurant_path(@restaurant)
  end

  def destroy
  	@restaurant = Restaurant.find(params[:id])
  	@restaurant.destroy
  	redirect_to user_path, notice: "Restaurant removed successfully!"
  end

  private

  def restaurant_params
  	params.require(:restaurant).permit(:name, :description, :address, :website, :photo)

end
