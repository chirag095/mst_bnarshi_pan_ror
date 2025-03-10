class PanOutlate < ApplicationRecord
	has_one_attached:image
        extend FriendlyId
        friendly_id :title, use: :slugged
end
