require 'rails_helper'

RSpec.describe SearchFacade do
  describe 'location' do
    it 'returns the information and location of a business' do
      location = SearchFacade.location("Tampa", "Indian")

      expect(location.first).to be_a Business
    end
  end
end
