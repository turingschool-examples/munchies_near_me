require 'rails_helper'

describe 'search index page' do
  before :each do
    visit '/search?city=Reston, VA&craving=asian'
  end

  it 'lists the search results' do
    within('#restaurant-0') do
      expect(page).to have_content 'My Home Thai Bistro'
    end
  end

  it 'lists the search results in the correct order' do
    within('#restaurant-1') do
      expect(page).to have_content 'JINYA Ramen Bar - Reston'
    end
  end
end