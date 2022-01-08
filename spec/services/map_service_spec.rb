require 'rails_helper'

RSpec.describe MapService do
  it 'can get distance' do
    to = '4 Oak Street, Buena Vista, CO'
    from = '102 Meadow Lane, Buena Vista, CO'

    result = MapService.distance(to, from)

    expect(result).to have_key :route
    expect(result[:route]).to be_a Hash
    expect(result[:route]).to have_key :distance
    expect(result[:route][:distance]).to be_a Float
  end


end
