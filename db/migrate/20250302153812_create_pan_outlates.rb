class CreatePanOutlates < ActiveRecord::Migration[7.2]
  def change
    create_table :pan_outlates do |t|
      t.string :image
      t.text :discription

      t.timestamps
    end
  end
end
