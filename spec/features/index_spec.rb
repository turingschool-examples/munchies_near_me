require 'rails_helper'

RSpec.describe 'Index page' do
  it 'shows restaurant search results sorted by distance' do
    visit '/'

    fill_in "city", with: "Arvada"
    fill_in "craving", with: "Japanese"

    click_button "commit"

    expect(current_path).to eq(search_path)

    expect(page).to have_content("Kokoro")
  end
end
