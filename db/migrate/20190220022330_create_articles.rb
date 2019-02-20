class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :category_id
      t.string :active_boolean

      t.timestamps
    end
  end
end
