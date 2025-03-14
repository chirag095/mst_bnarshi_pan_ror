class Faq < ApplicationRecord
	 enum faq_type: { home: 0, product: 1, state: 2, outlete: 3, event: 4 }
end
