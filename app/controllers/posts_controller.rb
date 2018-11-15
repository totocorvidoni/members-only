class PostsController < ApplicationController
  before_action :member_check, only: [:new, :destroy]

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user
    if @post.save
      redirect_to posts_path
    else
      flash.now[:danger] = 'Post not saved'
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
