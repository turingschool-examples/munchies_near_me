require 'rails_helper'
# ber spec/features/search/index_spec.rb
RSpec.describe 'Restaurant Search' do
  before :each do
    visit "/"
    fill_in :city, with: "denver, co"
    fill_in :craving, with: "thai"
    click_on "Search For Restaurants"
  end

  it 'redirects to results page' do
    expect(current_path).to eq(search_path)

    expect(page).to have_content("Results from your search will appear below!")
  end

  it 'lists details for 15 thai restaurants in order from closest to farthest from inputted city' do
    expect(page).to have_content("Phone:", count: 15)
    expect(page).to have_content("Rating:", count: 15)
    expect(page).to have_content("Address:", count: 15)
    expect(page).to have_content("Distance:", count: 15)
    expect(page).to have_content("miles", count: 15)
    expect(page).to have_content("Address: 406 E Colfax Ave, Denver, CO 80203")

    expect("Distance: 0.26 miles").to appear_before("Distance: 37.618 miles", only_text: true)
  end
end
