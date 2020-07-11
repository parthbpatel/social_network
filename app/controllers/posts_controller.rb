# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @our_posts = current_user.friends_and_own_posts
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(posts_params)
    @post.save ? redirect_to @post : render 'new'
  end

  def destroy; end

  private

  def posts_params
    params.require(:post).permit(:content, :imageURL)
  end
end
