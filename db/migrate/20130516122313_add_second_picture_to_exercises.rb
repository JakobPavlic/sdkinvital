class AddSecondPictureToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :second_picture, :string
  end
end
