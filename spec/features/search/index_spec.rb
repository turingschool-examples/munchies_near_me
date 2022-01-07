require 'rails_helper'

RSpec.describe 'Search index' do
  it 'should return the 15 closest restaurants' do
    visit '/'

    fill_in :city, with: '6715 E Union Ave, Denver CO'
    fill_in :craving, with: 'Thai'
    click_button 'Search For Restaurants'

    expect(page).to have_content('Jing')
    expect(page).to have_content('Distance: 1.115')
    expect(page).to have_content('Taste of Thailand')
    expect(page).to have_content('Distance: 9.336')
  end
end