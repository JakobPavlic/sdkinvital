class CreateExercisesInstructors < ActiveRecord::Migration
  def change
    create_table :exercises_instructors do |t|
      t.integer :exercise_id
      t.integer :instructor_id
      t.timestamps
    end
  end
end
