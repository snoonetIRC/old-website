class AddSortToStaff < ActiveRecord::Migration
  def change
    add_column :staff, :priority, :integer, default: 10
  end
end
