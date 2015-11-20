class ReservationsController < ApplicationController
	before_action :load_restaurant

	def index
		@reservations = @restaurant.reservations
	end

	def show
		@reservation = Reservation.find(params[:id])
	end

	def new
		@reservation = @restaurant.reservations.new
	end

	def create
		@reservation = Reservation.new(reservation_params)
		@reservation.user  = current_user
		if @reservation.save
			redirect_to restaurant_reservation_path
		else
			render :new
 		end
	end

	def confirm
		@reservation = Reservation.find(params[:id])
		if @reservation.confirmed
			redirect_to restaurant_reservation_path
		else
			render :show, notice: 'Your reservation is stashed but not confirmed.'
		end
	end

	def destroy
		@reservation = Reservation.find(params[:id])
		@reservation.destroy
		redirect_to restaurant_reservation_path
	end

	def edit
		@reservation = Reservation.find(params[:id])
	end

	def update
		@reservation = Reservation.find(params[:id])

		if @reservation.update_attributes(contact_params)
			redirect_to action: :show
		else
			render :edit
		end
	end

	private
	def reservation_params
		params.require(:reservation).permit(:party_size, :timeslot)
	end

	def load_restaurant
		@restaurant = Restaurant.find(params[:restaurant_id])
	end
end
