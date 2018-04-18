class ProjectsController < ApplicationController
	
	def index 
		@projects = Project.where(:is_accepted => true)
	end

	def new
		@project = Project.new
	end

	def edit
		@project = Project.find(params[:id])
	
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			flash[:success] = "Article was successfully created"
			redirect_to projects_path(@project)
		else
			render 'new'
		end
	end

	def update
		@project = Project.find(params[:id])
		if @project.update(project_params)
			flash[:success] = "Article was successfully updated"
			redirect_to projects_path(@project)
		else
			render 'edit'
		end

	end

	def show
		@project = Project.find(params[:id])
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		flash[:danger] = "Article was successfully deleted"
		redirect_to projects_path
	end

	def join
		@project = Project.find(params[:id])
		@user = User.find(current_user[:id])
		if @user 
           @project.users << @user
		end
		redirect_to user_path(@user)
	end

	def leave
		@project = Project.find(params[:id])
		@user = User.find(current_user[:id])
		if @user 
           @user.projects.delete(@project)
		end
		redirect_to user_path(@user)
	end


	private
		def project_params
			params.require(:project).permit(:name, :description, :is_accepted)
		end
		
end