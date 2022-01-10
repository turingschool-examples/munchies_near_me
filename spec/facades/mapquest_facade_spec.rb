require 'rails_helper'

RSpec.describe 'mapquest facade' do

  it 'can return the distance between locations' do
    expect(MapquestFacade.distance('denver', 'lakewood')).to be_a Float
    expect(MapquestFacade.distance('denver', 'lakewood')).to eq 7.577
  end
end
