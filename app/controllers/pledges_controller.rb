class PledgesController < ApplicationController
before_filter :load_project

def new
  @pledge = Pledge.new
end

def create
   @pledge = Pledge.new(pledge_params)
   if @pledge.save
   	redirect_to project_pledge_path(@project, @pledge)
   end
   
end

def show
   @pledge = Pledge.find(params[:id])
end

private 
  def pledge_params
  	params.require(:pledge).permit(:amount, :project_id)
  end

  def load_project
    @project = Project.find(params[:project_id])
  end
end
