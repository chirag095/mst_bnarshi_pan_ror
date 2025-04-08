class User < ApplicationRecord
  belongs_to :pan_outlate, optional: true
  belongs_to :state

  OUTLATE_TITLE = [
    "Minicafe model",
    "Stand Alone",
    "Foco model",
    "Event",
    "Birthday Celebration",
    "Wedding Ceremony",
    "Reunion Party",
    "Corporate Events",
    "Inauguration Event",
    "Engagement Celebration",
    "Kiosk Mini Cafe Model",
    "Premium Cafe Franchise",
    "Foco Model Franchise",
    "Cafe Model Franchise",
    "Master Franchise"
  ]
end
