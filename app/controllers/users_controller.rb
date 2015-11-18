class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to new_session, notice: "Hey, #{@user.first_name}, thanks for signing up!"
		else
			render :action => "new"
		end
	end

	def show
	 	@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		if @user.update_attributes(user_params)
			redirect_to user_path(@user)
		else
			render :show, alert: "Your profile could not be updated."
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to restaurants_url
	end

	private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	end
end
