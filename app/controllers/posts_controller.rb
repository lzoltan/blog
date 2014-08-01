class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def create
  	@post = Post.new(post_params)
  	
  	if @post.save
  		redirect_to posts_path , :notice => "Your post was saved"
  	else
  		render "new"
  	end
  end

  def update

  end

  def destroy

  end

  def new
  	@post = Post.new 
  end

  def show
  	@post = Post.find(params[:id])
  end

  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def post_params
      params.required(:post).permit(:title, :content)
    end


end
