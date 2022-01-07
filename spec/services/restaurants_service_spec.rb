require 'rails_helper'

RSpec.describe RestaurantsService do
  it 'creates a faraday connection' do
    expect(RestaurantsService.conn).to be_a Faraday::Connection
  end
end
