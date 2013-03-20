class ExercisesController < ApplicationController
  def index
    @exercises=Exercise.all
  end
  
  def show
    
    @exercise=Exercise.find(params[:id])
    @ogtitle=@exercise.name
    @ogdescription=@exercise.description.slice(0..100)+"..."
    @ogtype="activity"
  end
end
