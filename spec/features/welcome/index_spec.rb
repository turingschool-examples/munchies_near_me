require 'rails_helper'

RSpec.describe 'Root Page' do
  it 'has a form to search for munchables' do
    visit '/'

    expect(page).to have_field(:city)
    expect(page).to have_field(:craving)
    expect(page).to have_button("Search For Restaurants")
  end

  it 'allows a user to enter their city and craving' do
    visit '/'

    fill_in :city, with: 'Las Vegas'
    fill_in :craving, with: 'fries'
    click_button "Search For Restaurants"

    expect(current_path).to eq('/search')
    expect(page).to have_content('Closest Cravings!')
  end
end
