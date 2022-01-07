require 'rails_helper'

RSpec.describe 'Distance search' do
  it 'can find the distance to an address', :vcr do
    response = MapquestService.directions("Denver, CO", "1551 Utica St, Denver, CO 80204")
    
    expect(response).to be_a Hash
    expect(response[:distance]).to be_an Array

    distance_data = response[:distance]

    expect(distance_data[1]).to be_a Float
  end
end