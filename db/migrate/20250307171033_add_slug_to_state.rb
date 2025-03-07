class AddSlugToState < ActiveRecord::Migration[7.2]
  def change
    add_column :states, :slug, :string
    add_index :states, :slug, unique: true
  end
end
