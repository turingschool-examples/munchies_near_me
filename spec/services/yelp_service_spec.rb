require 'rails_helper'

describe YelpService do
  it 'gets a list of restaurants in the correct order' do
    data = YelpService.search('Reston, VA', 'Asian')

    expect(data).to be_a Array
    expect(data.length).to eq 15
    expect(data.first[:name]).to eq 'My Home Thai Bistro'
    expect(data.last[:name]).to eq 'Noku'
  end
end