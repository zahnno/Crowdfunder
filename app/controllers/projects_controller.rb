class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
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
			redirect_to projects_path
		else
			render :new
		end
	end

	def update
		@project = Project.find(params[:id])

		if @project.update_attributes(project_params)
			redirect_to project_path(@project)
		else
			render :edit
		end
	end

	def destroy
		@project = Project.find(params[:id])
  	@project.destroy
  	redirect_to projects_path
	end

	private
		def project_params
			params.require(:project).permit(:name, :description, :start_date, :end_date, :funding_goal, :owner_id, rewards_attributes: [:name, :description, :amount, :project_id, :_destroy])
	end
end
