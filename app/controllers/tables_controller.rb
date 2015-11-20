class TablesController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :destroy]
  before_action :load_restaurant

  def index
    @tables = @restaurant.tables
  end

  def show
    @table = Table.find(params[:id])
  end

  def new
    @table = Table.new
  end

  def create
    @table = @restaurant.tables.build(table_params)

    if @table.save
      redirect_to restaurant_path, notice: 'Successfully added the desired table(s)'
    else
      flash[:alert] = 'You cannot create a table without a capacity'
      redirect_to restaurant_path(@restaurant)
    end
  end

  def destroy
    @table = Table.find(params[:id])
    @table.destroy
  end

  private
  def table_params
    params.require(:table).permit(:party_size)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
