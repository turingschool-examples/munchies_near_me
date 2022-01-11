class YelpService
  class << self
    def business_search(location, category)
      parse_data(conn.get("/v3/businesses/search?limit=15&term=restaurants&categories=#{category}&location=#{location}"))
    end

    def conn
      Faraday.new('https://api.yelp.com', headers: { 'Authorization' => "bearer #{ENV['yelp_api_key']}" })
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
