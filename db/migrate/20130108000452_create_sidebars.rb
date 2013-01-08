class CreateSidebars < ActiveRecord::Migration
  def change
    create_table :sidebars do |t|
      t.string :name
      t.string :page_name
      t.string :linktype, default: "page"
      t.string :ancestry
      t.string :cssclass
      t.integer :rank, default: 10

      t.timestamps
    end
    add_index :sidebars, :ancestry
  end
end
