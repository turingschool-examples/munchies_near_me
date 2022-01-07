require 'rails_helper'

describe YelpService do
  describe 'find_business' do
    it 'finds a list of businesses based off a location and craving' do
      expected = YelpService.find_business('Denver, CO', 'thai')
      expect(expected).to be_a Array
      expected.each do |business|
        expect(business).to be_a Restaurant
      end
    end
  end
end
