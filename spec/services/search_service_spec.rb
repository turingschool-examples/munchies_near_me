require 'rails_helper'

RSpec.describe SearchService do
  it 'establishes connection' do
    search = SearchService.search('Denver', 'Sushi')

    expect(search).to be_a(Hash)
    expect(search[:businesses].count).to eq(15)
  end
end
