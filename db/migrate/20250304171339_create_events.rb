class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events do |t|
      t.string :image
      t.string :title
      t.text :discription

      t.timestamps
    end
  end
end
