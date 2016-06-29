class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name,             null: false
      t.string :permalink,        null: false
      t.string :content_markdown, null: false
      t.string :content_html,     null: false
      t.string :content_checksum, null: false

      t.timestamps null: false
    end
  end
end
