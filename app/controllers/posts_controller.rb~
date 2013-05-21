class PostsController < ApplicationController
  load_and_authorize_resource
  def index
    #@posts=Post.all
    @posts=Post.find(:all, :order => 'created_at DESC')
  end
  
  def show
    #@post=Post.find(params[:id])
    
    #spremenljivke za facebookov open graph 
    @ogtitle=@post.title
    @ogdescription=@post.content.slice(0..100)+"..."
    @ogtype="article"
    @id=@post.id
  end
  
  def new
  end
  
  def create
    #@post = Post.create!(params[:post])
    @post.user_id = @current_user.id
    @post.save!
    flash[:notice] = "Objava '#{@post.title}' je bila shranjena."
    redirect_to posts_path
  end
  
  def edit
    #@post = Post.find params[:id]
  end
  
  def update
    #@post = Post.find(params[:id])
    @post.update_attributes!(params[:post])
    flash[:notice] = "Objava '#{@post.title}' je bila posodobljena."
    redirect_to post_path(@post)
  end
  
  def destroy
    #@post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Objava '#{@post.title}' je bila izbrisana."
    redirect_to posts_path
  end
end
