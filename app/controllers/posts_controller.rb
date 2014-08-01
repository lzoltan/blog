class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def create
  	@post = Post.new(params[:post])
  	if @post.save
  		redirect_to posts_path , :notice => "Your post was saved"
  	else
  		render "new"
  	end
  end

  def new
  	@post = Post.new
  end



  def show
  	@post = Post.find(params[:id])
  end
end
