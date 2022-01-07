require 'rails_helper'

RSpec.describe DistancesService do
  it 'creates a faraday connection' do
    expect(DistancesService.conn).to be_a Faraday::Connection
  end

  it 'connects to the mapquest api' do
    origin = 'Denver'
    destination = 'Longmont'
    results = DistancesService.route(origin, destination)

    expect(results).to be_a Hash
    expect(results).to have_key :route
    expect(results[:route]).to have_key :distance
  end
end
