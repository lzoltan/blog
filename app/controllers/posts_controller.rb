class PostsController < ApplicationController

  before_filter :authenticate_user!


  def index
    if params[:search]
      @posts = Post.search(params[:search])
    else
  	 @posts = Post.order("created_at").all
    end
  end 

  def create
  	@post = Post.new(post_params)
  	@post.user = current_user
  	if @post.save
  		redirect_to posts_path , :notice => "Your post was saved"
  	else
  		render "new"
  	end
  end



  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])
  	
  	if @post.update_attributes(post_params_update)
  		redirect_to posts_path , :notice => "Your post was updated"
  	else
  		render "edit"
  	end
  end

  def destroy
  	@post = Post.find(params[:id])
  	@post.destroy
  	redirect_to posts_path, :notice => 'Your post has been deleted'
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
      params.required(:post).permit(:content, :user_id)

    end

    def post_params_update
      params.required(:post).permit(:content)

    end


end
