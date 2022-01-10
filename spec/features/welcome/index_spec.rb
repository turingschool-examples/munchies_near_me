require 'rails_helper'

RSpec.describe 'welcome page' do 
  it 'has a form to search for food by city' do 
    visit '/'
    fill_in :city, with: 'Denver, CO'
    fill_in :craving, with: 'Chinese'
    click_button 'Search For Restaurants'

    expect(current_path).to eq('/search')
  end 
end 