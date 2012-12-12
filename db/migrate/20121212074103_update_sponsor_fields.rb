class UpdateSponsorFields < ActiveRecord::Migration
  def up
    change_table :sponsors do |t|
      t.remove :description
      t.column :image_url, :string
    end
  end

  def down
    change_table :sponsors do |t|
      t.column :description, :text
      t.remove :image_url
    end
  end
end
