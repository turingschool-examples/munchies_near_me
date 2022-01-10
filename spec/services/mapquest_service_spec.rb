require 'rails_helper'
# ber spec/services/mapquest_service_spec.rb
RSpec.describe 'Mapquest Serice API' do
  it 'returns directions' do
    location = "denver, co"
    restaurant = "1201 E Colfax Ave, Ste 102, Denver, CO 80218"
    result = MapquestService.route(location, restaurant)
    route = result[:route]

    expect(result).to be_a Hash
    expect(route).to be_a Hash

    expect(result).to have_key :route
    expect(route).to have_key :distance
    expect(route[:distance]).to be_a Float
  end
end
