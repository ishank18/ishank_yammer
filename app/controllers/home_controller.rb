class HomeController < ApplicationController

	def index
		@post = Post.new
		@posts = Post.all
	end
	
	def new_user
	  	@user = User.new
	end
	
	def create_user
		
		@user = User.new(:email => params[:user][:email])
		if @user.save
			redirect_to :root, :alert => "Confirmation mail has been successfully send!"
		else
			render :action => "new"
		end	
	end
	
end
