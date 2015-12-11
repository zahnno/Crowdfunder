class UsersController < ApplicationController
	def new
		@user = User.new
	end
	
	def show
		@user = User.find(params[:id])
		@pledges = @user.pledges
		@projects = @user.projects
		@total = 0
	end
	def create
		@user = User.new(user_params)
			if @user.save
			session[:user_id] = @user.id
			redirect_to user_path(@user), notice: "Hello, #{@user.first_name}, #{@user.last_name}!"
			else
				render "new"
			end
		
	end

	private
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name)	
	end
	
end
