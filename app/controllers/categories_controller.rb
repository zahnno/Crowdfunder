class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
	end

	def new
		@category = Category.new
	end

	private
	def category_params
		params.require(:category).permit(:name, :category_id, :image)
	end

end