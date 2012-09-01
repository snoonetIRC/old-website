class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :nick
      t.string :name
      t.string :job
      t.string :location

      t.timestamps
    end
  end
end
