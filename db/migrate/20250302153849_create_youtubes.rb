class CreateYoutubes < ActiveRecord::Migration[7.2]
  def change
    create_table :youtubes do |t|
      t.text :url

      t.timestamps
    end
  end
end
