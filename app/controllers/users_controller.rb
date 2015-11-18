class UsersController < ApplicationController

	def new 
		@user = User.new
	end

	def create 
		@user = User.new
		if @user.save
			redirect_to new_user
		else
			render :action => "new"
		end
	end

	def show
	 	@user = User.find(params[:user_id])
	end

	



end
