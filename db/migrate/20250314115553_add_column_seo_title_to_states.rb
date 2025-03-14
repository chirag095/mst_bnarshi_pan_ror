class AddColumnSeoTitleToStates < ActiveRecord::Migration[7.2]
  def change
    add_column :states, :seo_title, :text
  end
end
