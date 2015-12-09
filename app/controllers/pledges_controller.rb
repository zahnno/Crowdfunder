class PledgesController < ApplicationController
before_filter :ensure_logged_in, only: [:create, :destroy]
before_filter :load_project

def new
   @pledge = Pledge.new
end

def create
   @pledge = Pledge.new(pledge_params)
end

private 
  def pledge_params
  	params.require(:pledge).permit(:amount, :project_id)
  end

end
