class UsersController < ApplicationController
	
	# User Profile
	def show

	end

	# For Admin Only
	def admin
		@projects = Project.where(:is_accepted => false)
	end

end