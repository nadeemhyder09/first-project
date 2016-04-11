class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  # Hello there !!!
  def show
    @post = Post.find(params[:id])
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(p_params)

    if @post.save 
      redirect_to posts_path, :notice => "Your post was SAVED"
    else
      render "new"
    end
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(p_params)
      redirect_to posts_path, :notice => "Your post was Updated"
     # else
      #  render "edit"
    end
  end
  def destroy
     @post = Post.find(params[:id])
     @post.destroy
     redirect_to posts_path, :notice => "Your post has been Deleted"
  end
  
end


