class AddFaqTypeToFaqs < ActiveRecord::Migration[7.2]
  def change
    add_column :faqs, :faq_type, :integer
  end
end
