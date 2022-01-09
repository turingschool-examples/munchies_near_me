require 'rails_helper'

RSpec.describe YelpService do
  it 'can get restaurant data' do
    city = "Denver, CO"
    craving = "coffee"

    result = YelpService.get_search_restaurant_data(city, craving)
