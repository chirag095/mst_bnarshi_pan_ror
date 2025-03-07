class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :image
      t.text :discription

      t.timestamps
    end
  end
end
