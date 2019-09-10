class UsersController < ApplicationController

    def index
        @users = User.all
    end
    
    def show
        @user = User.find(params[:id])
    end

    def new
		@user = User.new
	end

	def edit
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(username: params[:username], password: params[:password])
		if @user.valid?
			@user.save
			# session[:user_id] = user.id
			redirect_to "/users/#{@user.id}", notice: "Logged in!"
		else
			flash.now[:alert] = "Username or password is invalid"
			render "new"
		end
	
	end

	def update
	  @user = User.find(params[:id])
	  @user.update(user_params)
	  redirect_to user_path(@user)
	end

	private

		def user_params
			params.require(:user).permit(:name, :bio, :age)
		end
end