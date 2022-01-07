require 'rails_helper'

RSpec.describe 'Mapquest Facade' do
  it '.directions', :vcr do
    direction = MapquestFacade.directions("Denver, CO", "1551 Utica Street, Denver, CO 80204")
    
    expect(direction).to be_a Direction
  end
end