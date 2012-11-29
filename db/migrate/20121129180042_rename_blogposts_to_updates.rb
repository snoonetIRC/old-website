class RenameBlogpostsToUpdates < ActiveRecord::Migration
  def change
    rename_table :blogposts, :updates
  end
end
