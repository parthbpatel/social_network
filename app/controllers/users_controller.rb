# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.all
    @friends = current_user.friends
    @pending_requests = current_user.pending_requests
    @friend_requests = current_user.received_requests
  end

  def show
    @user = User.find(params[:id])
  end

  def update_img
    @user = User.find(params[:id])
    unless current_user.id == @user.id
      redirect_back(fallback_location: users_path(current_user))
      return
    end
    image = params[:user][:image] unless params[:user].nil?
    if image
      @user.image = image
      @user.save ? flash[:success] = 'Image uploaded' : flash[:dander] = 'Image uploaded failed'
    end
    redirect_back(fallback_location: root_path)
  end
end
