class CreateUpcomings < ActiveRecord::Migration[7.2]
  def change
    create_table :upcomings do |t|
      t.timestamps
    end
  end
end
