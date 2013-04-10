class RemoveInstructorIdFromPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :instructor_id
  end

  def down
    add_column :posts, :instructor_id, :integer
  end
end
