json.extract! realestate, :id, :title, :adType, :propertyType, :levels, :bathrooms, :area, :placeId, :price, :description, :user_id, :created_at, :updated_at
json.url realestate_url(realestate, format: :json)
