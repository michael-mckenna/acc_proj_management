class UsersController < ApplicationController
	
	before_action :require_user

	# User Profile
	def show
		@user = User.find(params[:id])
	end

	def index 
		@users = User.all
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to users_path(@user)
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end

	# For Admin Only
	def admin
		@projects = Project.where(:is_accepted => false)
	end



	private
		def user_params
			params.require(:user).permit(:is_admin)
		end

end