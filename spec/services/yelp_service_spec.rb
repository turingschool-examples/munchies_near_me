require 'rails_helper'
# ber spec/services/yelp_service_spec.rb
RSpec.describe 'Yelp business search API' do
  it 'returns businesses' do
    location = "denver, co"
    category = "thai"

    response = YelpService.business_search(location, category)

    expect(response).to be_a Hash

    expect(response).to have_key :businesses
    expect(response[:businesses].count).to eq(15)
    expect(response[:businesses]).to be_an Array
    expect(response[:businesses][0]).to have_key :name
    expect(response[:businesses][0]).to have_key :display_phone
    expect(response[:businesses][0]).to have_key :rating
    expect(response[:businesses][0]).to have_key :location
    expect(response[:businesses][0][:location]).to have_key :display_address
  end
end
