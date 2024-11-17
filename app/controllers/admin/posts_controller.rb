class Admin::PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params.merge(user_id: current_user.id))
    post.save!
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:text)
  end
end
