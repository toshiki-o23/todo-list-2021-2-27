class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def show
  end

  def new
    @post = Post.new(post: params[:post])
    if @post.save
      redirect_to :root
    else
      render "show"
    end
  end

  def destroy
    @post = Post.last
    @post.destroy
    redirect_to :root
  end
end
