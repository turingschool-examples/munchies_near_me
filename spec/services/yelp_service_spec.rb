require 'rails_helper'

RSpec.describe 'Yelp Service' do
  describe 'it gets the closest restaurants based on a search query' do
    it 'returns a list of restaurants' do
      expect(YelpService.restaurants('Denver', 'Thai')).to be_a Hash
      expect(YelpService.restaurants('Denver', 'Thai')[:businesses]).to be_an Array
    end
  end
end