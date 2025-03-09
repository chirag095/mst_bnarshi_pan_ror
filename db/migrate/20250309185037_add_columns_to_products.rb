class AddColumnsToProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :heading1, :text
    add_column :products, :heading2, :text
    add_column :products, :heading3, :text
    add_column :products, :content1, :text
    add_column :products, :content2, :text
    add_column :products, :content3, :text
  end
end
