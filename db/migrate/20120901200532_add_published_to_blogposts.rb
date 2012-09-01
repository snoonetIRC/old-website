class AddPublishedToBlogposts < ActiveRecord::Migration
  def change
    add_column :blogposts, :published, :boolean
  end
end
