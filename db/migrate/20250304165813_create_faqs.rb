class CreateFaqs < ActiveRecord::Migration[7.2]
  def change
    create_table :faqs do |t|
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
