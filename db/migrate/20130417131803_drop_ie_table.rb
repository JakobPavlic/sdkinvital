class DropIeTable < ActiveRecord::Migration
  def up
    drop_table :exercises_instructors
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
