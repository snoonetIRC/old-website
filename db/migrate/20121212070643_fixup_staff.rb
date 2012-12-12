class FixupStaff < ActiveRecord::Migration
  def up
    change_table :staff do |t|
      t.rename :job, :role
      t.rename :location, :url
      t.remove :nick
      t.column :fav_chan, :string
    end
  end
  def down
    change_table :staff do |t|
      t.rename :role, :job
      t.rename :url, :location
      t.column :nick, :string
      t.remove :fav_chan
    end
  end
end
