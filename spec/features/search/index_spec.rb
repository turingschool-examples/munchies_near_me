require 'rails_helper'

RSpec.describe 'search index page' do
  it 'visits page with correct info' do
    visit root_path
    fill_in :city, with: 'Denver'
    fill_in :craving, with: 'Sushi'
    click_button 'Search For Restaurants'

    expect(current_path).to eq('/search')
    expect(page).to have_content('1487 S Pearl St Denver, CO 80210')
    expect(page).to have_content('Sushi Den')
    expect(page).to have_content('3.52')
    expect(page).to have_content('(303) 777-0826')
    expect(page).to have_content('4.5')
  end
end
