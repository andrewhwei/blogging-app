class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    redirect_to "/posts/#{post.id}"
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    post = Post.find_by(id: params[:id]).update(post_params)
    redirect_to "/posts/#{params[:id]}"
  end

  def destroy
    post = Post.find_by(id: params[:id]).delete
    redirect_to "/posts"
  end


  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
