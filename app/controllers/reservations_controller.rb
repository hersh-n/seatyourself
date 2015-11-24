class ReservationsController < ApplicationController

	def index
		@reservations = current_user.reservations
	end

	def show
		@reservation = Reservation.find(params[:id])
	end

	def new
		if current_user
			@reservation = Reservation.new
		else
			redirect_to new_session_path
		end
	end

	def create
		@reservation = Reservation.new(reservation_params)
		@restaurant = Restaurant.find(params[:restaurant_id])
		@party_size = params[:reservation][:party_size].to_i
		@timeslot = DateTime.new(params[:reservation][:year].to_i, params[:reservation][:month].to_i, params[:reservation][:day].to_i, params[:reservation][:hour].to_i)
		if @reservation.save
			@restaurant.book_tables(@restaurant.find_tables_for_party(@party_size, @timeslot), @reservation.id)
			redirect_to user_path(@reservation.user_id)
		else
			render :new
 		end
	end

	def destroy
		@reservation = Reservation.find(params[:id])
		@reservation.destroy
		redirect_to user_path(current_user)
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
		params.require(:reservation).permit(:party_size, :user_id, :restaurant_id, :timeslot)
	end
end
