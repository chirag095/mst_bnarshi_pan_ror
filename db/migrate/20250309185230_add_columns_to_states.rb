class AddColumnsToStates < ActiveRecord::Migration[7.2]
  def change
    add_column :states, :heading1, :text
    add_column :states, :heading2, :text
    add_column :states, :heading3, :text
    add_column :states, :content1, :text
    add_column :states, :content2, :text
    add_column :states, :content3, :text
  end
end
