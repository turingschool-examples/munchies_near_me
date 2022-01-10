require 'rails_helper'

RSpec.describe 'Restaurant Search' do

  describe 'when i visit /' do
    before do
      visit '/'
    end

    it 'home page' do
      expect(page).to have_content('Munchies')
      expect(current_path).to eq('/')
    end

    it 'and i fill in the form with city and food category' do
      fill_in :city, with: 'Denver, CO'
      fill_in :craving, with: 'Thai'
      click_button 'Search For Restaurants'

      expect(page).to have_content('Aloy Modern Thai')
    end
  end
end
