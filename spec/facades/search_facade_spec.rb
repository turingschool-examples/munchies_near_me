require 'rails_helper'

RSpec.describe SearchFacade do
  it 'creates location poros' do
    search = SearchFacade.search_results('Denver', 'Sushi')

    expect(search[0]).to be_a(Location)
    expect(search[0].name).to eq("Blue Sushi Sake Grill")
  end
end
