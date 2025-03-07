class CreateFranchiseBenefits < ActiveRecord::Migration[7.2]
  def change
    create_table :franchise_benefits do |t|
      t.string :title
      t.text :discription
      t.string :image

      t.timestamps
    end
  end
end
