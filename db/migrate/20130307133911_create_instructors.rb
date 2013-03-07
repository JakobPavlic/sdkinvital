class CreateInstructors < ActiveRecord::Migration
  def up
    create_table :instructors do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end
  
  def down
    drop_table :instructors
  end
end
