class AddSlugToPanOutlates < ActiveRecord::Migration[7.2]
  def change
    add_column :pan_outlates, :slug, :string
    add_index :pan_outlates, :slug, unique: true
  end
end
