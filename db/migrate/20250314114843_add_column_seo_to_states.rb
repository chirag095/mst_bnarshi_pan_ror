class AddColumnSeoToStates < ActiveRecord::Migration[7.2]
  def change
    add_column :states, :seo_description, :text
    add_column :states, :seo_keywords, :text
  end
end
