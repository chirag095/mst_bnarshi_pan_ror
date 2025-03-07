class CreateBlogs < ActiveRecord::Migration[7.2]
  def change
    create_table :blogs do |t|
      t.text :description
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
