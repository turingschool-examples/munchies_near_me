require 'rails_helper'

RSpec.describe YelpService do
  describe 'class methods' do
    it 'shows 15 closest restaurants' do
      location = 'Denver, CO'
      term = 'Japanese'

      result = YelpService.restaurant_locations(location, term).first

      expect(result).to have_key(:name)
      expect(result).to have_key(:phone)
      expect(result).to have_key(:rating)
      expect(result[:location]).to have_key(:display_address)
      expect(result).to have_key(:distance)
    end
  end
end
