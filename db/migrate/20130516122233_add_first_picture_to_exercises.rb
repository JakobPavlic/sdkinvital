class AddFirstPictureToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :first_picture, :string
  end
end
