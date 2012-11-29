class RenameStaffsToStaff < ActiveRecord::Migration
  def change
    rename_table :staffs, :staff
  end
end
