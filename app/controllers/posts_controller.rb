class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(post_params)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(post_params)
  end

  def update
    @post = Post.find(post_params)

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(post_params)
    @post.destroy

    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :description)
    end


end
