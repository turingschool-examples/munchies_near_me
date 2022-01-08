require 'rails_helper'

RSpec.describe MapService do
  describe 'class methods' do
    it 'shows 15 closest restaurants' do
      location1 = 'Denver, CO'
      location2 = '2022 S University Blvd, DENVER, CO'

      result = MapService.locations(location1, location2)

      expect(result).to have_key(:distance)
    end
  end
end
