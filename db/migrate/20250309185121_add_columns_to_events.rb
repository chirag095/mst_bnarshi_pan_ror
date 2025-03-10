class AddColumnsToEvents < ActiveRecord::Migration[7.2]
  def change
    add_column :events, :heading1, :text
    add_column :events, :heading2, :text
    add_column :events, :heading3, :text
    add_column :events, :content1, :text
    add_column :events, :content2, :text
    add_column :events, :content3, :text
  end
end
