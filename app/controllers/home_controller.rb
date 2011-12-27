class HomeController < ApplicationController

	def index
		@post = Post.new
		
		not_to_display = current_user.id.to_s
		already_following = Following.where(:follower => current_user.id).collect {|f| f.master}.join(",")
		not_to_display += "," + already_following unless already_following.blank?
		
		@users = User.where("id not in (#{not_to_display})")
		@posts = Post.where("user_id in (#{not_to_display})").order "created_at desc" unless not_to_display.empty?
		
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
	
	def follow
		if(Following.where(:master => params[:master_id], :follower => current_user.id).empty?)
			Following.create(:master => params[:master_id], :follower => current_user.id)
		end	
	end
	
	def comment
		@comment = Comment.new(:comment => params[:comment], :user_id => current_user.id)
		post = Post.where(:id => params[:post_id]).first
		post.comments << @comment
	end
	
end
