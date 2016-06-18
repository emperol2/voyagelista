class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :title
      t.text :desc
      t.text :tags
      t.text :author

      t.timestamps null: false
    end
  end
end
