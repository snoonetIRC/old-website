class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name, null: false
      t.string :permalink, null: false
      t.string :content, null: false
      t.integer :content_type, null: false, default: 0

      t.timestamps null: false
    end
  end
end
