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
	
	def update
		@user = User.where(:id => params[:id]).first
		@user.name = params[:user][:name] unless params[:user][:name].blank?
		@user.image = params[:user][:image] unless params[:user][:image].blank?
		if @user.save
			redirect_to( :root, :alert => 'User was successfully updated.')
		else
			render :action => "edit"
		end
		
	end
	
	def edit
		@user = User.where(:id => params[:id]).first
	end
	
end
