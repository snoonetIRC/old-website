class AddCssclassToPages < ActiveRecord::Migration
  def change
    add_column :pages, :cssclass, :string
  end
end
