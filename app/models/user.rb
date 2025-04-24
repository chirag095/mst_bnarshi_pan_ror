class User < ApplicationRecord
  belongs_to :pan_outlate, optional: true
  belongs_to :state
    # Validate name: only letters and spaces, no numbers or special characters
  validates :full_name, presence: true, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters and spaces" }

  # Validate phone number (contact): exactly 13 characters
  validates :contact,
            presence: true,
            length: { in: 10..13 },
            format: { with: /\A\+?\d+\z/, message: "must be a valid phone number with optional country code" }
  
  OUTLATE_TITLE = [
   "kiosk model Franchise",
   "Cafe model franchise",
   "Premium model franchise",
   "Foco model franchise",
   "Master franchise",
   "Event"
    ]
end
