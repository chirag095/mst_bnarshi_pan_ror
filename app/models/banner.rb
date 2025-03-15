class Banner < ApplicationRecord
	has_one_attached:image
	enum banner_img_type: { home: 0, contact_us: 1, gallery: 2, about: 3, event: 4, blog: 5, award: 6 }
end
