class StaticController < ApplicationController
  def index
    @posts=Post.find(:all, :limit => 2, :order => 'created_at DESC')
  end
  def kineziologija
  end
end
