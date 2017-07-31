class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @micropost = current_user.microposts.build #form_for用
      @microposts = current_user.feed_microposts.order('created_at DESC').page(params[:page])
      @like_posts = current_user.feed_likes.order('created_at DESC').page(params[:like_post])
      
    end
  end
end