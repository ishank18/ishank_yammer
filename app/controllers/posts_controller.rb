class PostsController < ApplicationController
	def create
		@post = Post.new(params[:post])
		@post.user_id = current_user.id
		if(@post.save)
			redirect_to :root, :alert => "Post Successfully Created!"
		else
			redirect_to :root, :alert => "Error Saving post!"
		end				
	end
end
