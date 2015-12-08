class ProjectsController < ApplicationController
	def index

	end

	def show

	end

	def new

	end

	def edit

	end

	def create

	end

	def update

	end

	def destroy

	end

	private
		def projects_params
			params.require(:project).permit(:name, :description, :start_date, :end_date, :funding_goal, :owner_id)
	end
end
end

