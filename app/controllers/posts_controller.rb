class PostsController < ApplicationController
  def index
    @posts=Post.all
  end
  
  def show
    
    @post=Post.find(params[:id])
    @ogtitle=@post.title
    @ogdescription=@post.content
    @ogtype="article"
  end
  
end
