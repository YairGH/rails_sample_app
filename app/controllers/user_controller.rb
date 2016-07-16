class UserController < ApplicationController
  def new
  	@title = "Sign Up"
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  	@title = @user.name
  end

	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:success] = "Welcome to the sample App!"
			sign_in @user
			redirect_to @user
		else
			@title = "Sign Up"
			@error_messages = @user.errors.full_messages
			render 'new'
		end
	end

end
