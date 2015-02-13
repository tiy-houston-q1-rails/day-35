class PostsController < ApplicationController

  def index
    user_id = params[:user_id]
    user = User.find(user_id)
    @posts = user.posts
  end
end
