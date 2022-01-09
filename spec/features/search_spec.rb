require 'rails_helper'

RSpec.describe 'can search for a list of restaurants' do
  it 'can show a list of restaurants' do
    visit '/'

    fill_in :city, with: 'Denver, CO'
    fill_in :craving, with: 'coffee'
    click_button 'Search For Restaurants'

    expect(current_path).to eq('/search')

    expect(page).to have_content("Thump Coffee")
    expect(page).to have_content("+17204566648")
    expect(page).to have_content(["1201 E 13th Ave", "Denver, CO 80218"])
    expect(page).to have_content("0.752 miles")
  end
end
