class UsersController < ApplicationController

	def new
		@users = User.new
	end

	def create
		@users = User.new
		if @users.save
			redirect_to new_user
		else
			render :action => "new"
		end
	end

	def show
	 	@users = User.find(params[:user_id])
	end





end
