require 'rails_helper'

RSpec.describe 'XE-Challenge Application' do
  describe 'Realestate model' do
    it 'shows the successful create' do
      Realestate.create(
        title: 'Some Title 1',
        adType: 1,
        propertyType: 1,
        levels: 1,
        bathrooms: 1,
        area: 'Some Area 1',
        placeId: 'PlaceId 1',
        price: 1000,
        description: '',
        user_id: 0
      )
      Realestate.create(
        title: 'Some Title 2',
        adType: 1,
        propertyType: 1,
        levels: 1,
        bathrooms: 1,
        area: 'Some Area 2',
        placeId: 'PlaceId 2',
        price: 1000,
        description: '',
        user_id: 0
      )
      realestates_count = Realestate.all.count
      expect(realestates_count).to be(2)
    end

    it 'shows the successful create and successful read' do
      Realestate.create(
        title: 'Some Title 1',
        adType: 1,
        propertyType: 1,
        levels: 1,
        bathrooms: 1,
        area: 'Some Area 1',
        placeId: 'PlaceId 1',
        price: 1000,
        description: '',
        user_id: 0
      )

      title = Realestate.first.title
      expect(title).to eq('Some Title 1')
    end

    it 'shows the failed create due to invalide placeId' do
      Realestate.create(
        title: 'Some Title',
        adType: 1,
        propertyType: 1,
        levels: 1,
        bathrooms: 1,
        area: 'Some Area',
        placeId: '',
        price: 1000,
        description: '',
        user_id: 0
      )
      realestates_count = Realestate.all.count
      expect(realestates_count).to be(0)
    end
  end

end