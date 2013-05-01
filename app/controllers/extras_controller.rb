class ExtrasController < ApplicationController
  def index
    @extras=Extra.all
  end
  
  def show
    
    @extra=Extra.find(params[:id])
    @ogtitle=@extra.name
    @ogdescription=@extra.description.slice(0..100)+"..."
    @ogtype="activity"
  end
end
