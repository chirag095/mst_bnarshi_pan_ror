class CreateAwards < ActiveRecord::Migration[7.2]
  def change
    create_table :awards do |t|
      t.string :title

      t.timestamps
    end
  end
end
