class ReservationsController < ApplicationController

	def index
		@reservations = current_user.reservations
	end

	def show
		@reservation = Reservation.find(params[:id])
	end

	def new
		@reservations = Reservation.new
	end

	def create
		@reservation = Reservation.new(reservation_params)
		@reservation.user  = current_user
		if @reservation.save
			redirect_to reservations_path
		else
			render :new
 	end

	end

	def destroy
		@reservation = Reservation.find(params[:id])
		@reservation.destroy
		redirect_to reservations_path

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
		params.require(:reservation).permit(:party_size)
	end
end
