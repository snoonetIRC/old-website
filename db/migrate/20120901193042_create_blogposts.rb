class CreateBlogposts < ActiveRecord::Migration
  def change
    create_table :blogposts do |t|
      t.string :title
      t.text :body
      t.text :excerpt
      t.datetime :timestamp

      t.timestamps
    end
  end
end
