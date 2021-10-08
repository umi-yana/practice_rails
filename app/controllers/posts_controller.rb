class PostsController < ApplicationController
  def index
    @post = Post.all
     @post_new = Post.new
  end

  def show
  end
  
  def create
    @post_new = Post.new(post_params)
    @post_new.user_id = current_user.id
    @post_new.save
    redirect_to posts_path
  end
  
  def edit
  @post = Post.find(params[:id])
  
  
  end
  
  def update
   @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post)
    end
  end
    
  
  private
  def post_params
    params.require(:post).permit(:title,:content,:user_id)
  end


end
