class PledgesController < ApplicationController
before_filter :ensure_logged_in, only: [:create, :destroy]
before_filter :load_project

def new
   @pledge = Pledge.new
end

def create
   @pledge = Pledge.new(param[:id])
end

private 
  def review_params
  	params.require(:review).permit(:comment, :product_id)
  end

end
