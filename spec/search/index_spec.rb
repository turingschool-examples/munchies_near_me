require 'rails_helper'

RSpec.describe 'Restaurants Search Index' do
  it 'returns the top 15 results' do
    visit '/'
    fill_in :city, with: 'Denver'
    fill_in :craving, with: 'pizza'
    click_on 'Search For Restaurants'

    expect(current_path).to eq '/search'
    expect(page).to have_content 'Phone', count: 15
  end
end
