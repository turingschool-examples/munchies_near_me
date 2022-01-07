require 'rails_helper'

RSpec.describe 'Mapquest Facade' do
  it 'returns the distance between two points' do
    expect(MapquestFacade.distance('denver', 'pittsburgh')).to be_a Float
    expect(MapquestFacade.distance('denver', 'pittsburgh')).to eq 1452.042
  end
end