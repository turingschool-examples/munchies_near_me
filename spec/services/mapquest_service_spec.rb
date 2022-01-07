require 'rails_helper'

RSpec.describe 'Mapquest Service' do
  it 'returns a has of routes' do
    expect(MapquestService.route('denver', 'pittsburgh')).to be_a Hash
    expect(MapquestService.route('denver', 'pittsburgh')[:route][:distance]).to be_a Float
  end
end