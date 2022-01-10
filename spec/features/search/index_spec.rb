require 'rails_helper'

RSpec.describe 'Search Index' do
  it 'lists the 15 closest restaraunts and their attributes' do
    visit '/'
    fill_in "city", with: "Wheatridge"
    fill_in "craving", with: "Pizza"
    click_button

    expect(page).to have_content("Mac & Cheezary")
    expect(page).to have_content("Distance from me: 0.764")
    expect(page).to have_content("Right Coast Pizza")
    expect(page).to have_content("Large Marge's Philly Cheesesteaks")
  end

end
