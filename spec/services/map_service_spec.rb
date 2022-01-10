require 'rails_helper'

RSpec.describe MapService do
  it 'establishes connection' do
    search = MapService.directions('Denver CO', 'Aurora CO')

    expect(search[:route][:distance]).to eq(10.974)
  end
end
