require 'rails_helper'


describe 'Search Results', type: :feature do
  before do
    visit '/'
  end

  it 'shows can search' do
    fill_in "Enter City/State (ex: Denver, CO)", with: 'Denver'
    fill_in "What are you craving?", with: 'pizza'

    click_button 'Search For Restaurants'

    expect(current_path).to eq(search_path)
    
    expect(page).to have_content("Hops & Pie")
    expect(page).to have_content("3920 Tennyson St Denver, CO 80212")
    expect(page).to have_content("+13034777000")
    expect(page).to have_content("+4.5")
  end

end

# As a visitor
# When I visit “/“
# And fill in the existing form with a city (ex: “Denver, CO”) and my 
# food craving (ex: thai, american, bar, chinese, etc.) and hit submit,
# I’m taken to a page where I can see a list of the 15 closest restuarants
# for that craving in that city. 
# And each restaurant lists their name, phone number, rating, human 
# readable address, and the distance it is from that city. 
# And the restaurants are listed in order of proximity 
# (closest to furthest)