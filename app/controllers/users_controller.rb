class UsersController < ApplicationController
	
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
			flash[:success] = "User was successfully updated"
			redirect_to users_path(@user)
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		flash[:danger] = "User was successfully deleted"
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