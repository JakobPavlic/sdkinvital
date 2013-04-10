class PostsController < ApplicationController
  def index
    @posts=Post.all
  end
  
  def show
    id = params[:id]
    @post=Post.find(id)
    
    #spremenljivke za facebookov open graph 
    @ogtitle=@post.title
    @ogdescription=@post.content.slice(0..100)+"..."
    @ogtype="article"
    @id=@post.id
  end
  
  def new
  end
  
  def create
    @post = Post.create!(params[:post])
    @post.user_id = @current_user.id
    @post.save!
    flash[:notice] = "#{@post.title} je bil shranjen."
    redirect_to posts_path
  end
  
  def edit
    @post = Post.find params[:id]
  end
  
  def update
    @post = Post.find params[:id]
    @post.update_attributes!(params[:post])
    flash[:notice] = "Objava #{@post.title} je bila posodobljena."
    redirect_to post_path(@post)
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Objava '#{@post.title}' je bila izbrisana."
    redirect_to posts_path
  end
end
