class UsersController < ApplicationController
  
	def new
  	@user = User.new
	end
	
	def create
		@user = User.new(:email => params[:user][:email])
		if @user.save
			redirect_to :root, :alert => "Confirmation mail has been successfully send!"
		else
			render :action => "new"
		end	
	end
	

	
end
