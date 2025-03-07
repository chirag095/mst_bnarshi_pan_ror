class AddColumnToPanOutlate < ActiveRecord::Migration[7.2]
  def change
    add_column :pan_outlates, :space, :string
    add_column :pan_outlates, :title, :string
  end
end
