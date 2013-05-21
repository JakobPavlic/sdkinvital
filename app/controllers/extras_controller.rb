class ExtrasController < ApplicationController
  def index
    @extras=Extra.all
  end
  
  def show
    
    @extra=Extra.find(params[:id])
    @ogtitle=@extra.name
    @ogdescription=@extra.description.slice(0..500)+"..."
    @ogtype="article"
  end
end
