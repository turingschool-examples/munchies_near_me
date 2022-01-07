require 'rails_helper'

RSpec.describe 'Root Page' do
  it 'has a form to search for munchables' do
    visit '/'

    expect(page).to have_field(:city)
    expect(page).to have_field(:craving)
    expect(page).to have_button("Search For Restaurants")
  end
end
