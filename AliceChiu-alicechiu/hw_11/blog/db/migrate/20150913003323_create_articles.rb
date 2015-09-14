class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :date
      t.text :body
      t.string :author
      t.boolean :private
      t.integer :has_many

      t.timestamps null: false
    end
  end
end
