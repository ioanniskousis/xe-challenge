class CreateRealestates < ActiveRecord::Migration[6.1]
  def change
    create_table :realestates do |t|
      t.string :title, null: false
      t.integer :adType, null: false, default: 0
      t.integer :propertyType, null: false, default: 0
      t.integer :levels, null: false, default: 0
      t.integer :bathrooms, null: false, default: 0
      t.string :area, null: false
      t.string :placeId, null: false
      t.float :price
      t.text :description
      t.integer :user_id, null: false, default: 0

      t.timestamps
    end
  end
end
