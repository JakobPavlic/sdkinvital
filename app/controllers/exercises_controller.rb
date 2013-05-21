class ExercisesController < ApplicationController
  def index
    @exercises=Exercise.all
  end
  
  def show
    
    @exercise=Exercise.find(params[:id])
    @ogtitle=@exercise.name
    @ogdescription=@exercise.description.slice(0..500)+"..."
    @ogtype="article"
  end
end
