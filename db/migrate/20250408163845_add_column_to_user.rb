class AddColumnToUser < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :enquiry_form, :string
  end
end
