require 'rails_helper'

RSpec.describe MapquestService do
  it 'can find the distance from you to craving' do
    response = MapquestService.get_distance("las vegas", 36.1159689, -115.1747334)
    distance = response[:route][:distance]

    expect(distance).to be_a(Float)
  end
end
