require 'rails_helper'

describe 'index page' do
  it 'lets you find restaurants by a location and craving' do
    visit "/"

    fill_in 'city', with: 'Denver, CO'
    fill_in 'craving', with: 'thai'
    click_button "Search For Restaurants"

    expect(current_path).to eq("/search")

    expect(page).to have_content("Wokano Asian Bistro")
  end
end
