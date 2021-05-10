class Realestate < ApplicationRecord
  validates :title, presence: true, length: { minimum: 2 }
  validates :area, presence: true, length: { minimum: 2 }
  validates :placeId, presence: true, length: { minimum: 2 }
  validates :adType, presence: true, numericality: { greater_than: 0 }
  validates :levels, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :bathrooms, presence: true, numericality: { greater_than_or_equal_to: 0 }

end
