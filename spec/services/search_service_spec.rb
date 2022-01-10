require 'rails_helper'

RSpec.describe SearchService do
  describe 'conn' do
    it 'has a connection to yelp api' do
      conn = SearchService.conn

      expect(conn).to be_a Faraday::Connection
    end
  end
end
