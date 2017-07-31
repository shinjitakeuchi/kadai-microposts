class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def index
    @like_posts = current_user.like_posts.order('created_at DESC').page(params[:micropost_id])
  end
  
  def create
    @micropost = Micropost.find(params[:micropost_id])
    current_user.like(@micropost)
    flash[:success] = 'Likeしました。'
    redirect_to root_url
  end

  def destroy
    @micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(@micropost)
    flash[:success] = 'Unlikeしました。'
    redirect_to root_url
  end
  
end

