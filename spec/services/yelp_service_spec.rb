require 'rails_helper'

RSpec.describe YelpService do
  it 'returns restaurants' do
    expect(YelpService.restaurants('denver', 'thai')).to be_a Hash
    expect(YelpService.restaurants('Denver', 'Thai')[:businesses]).to be_an Array
  end
end
