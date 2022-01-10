require 'rails_helper'

RSpec.describe 'welcome page' do
  it 'visits page' do
    visit root_path

    expect(current_path).to eq('/')
  end
end
