require 'rails_helper'

RSpec.describe CravingService do
  it 'can find all restaurants that match a craving' do
    response = CravingService.find_restaurants("Las Vegas", "fries")
    restaurants = response[:businesses]

    restaurants.each do |rest|
      expect(rest[:name]).to be_a(String)
      expect(rest[:rating]).to be_a(Float)
      expect(rest[:phone]).to be_a(String)
      expect(rest[:location][:display_address]).to be_an(Array)
      expect(rest[:coordinates][:latitude]).to be_a(Float)
      expect(rest[:coordinates][:longitude]).to be_a(Float)
    end
  end
end
