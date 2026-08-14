class PostsController < ApplicationController
  def new
    @post= Post.new
  end

  def create
    @post= Post.new(posts_params)
    if @post.save 
      redirect_to posts_path
    else
      render :new
    end
  end

  private
  def posts_params
    params.expect(post: [:ttitle, :body, :image])
  end
  
end
