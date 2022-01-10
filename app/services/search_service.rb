class SearchService
  class << self

    def get_url(url)
      # conn.headers = {'Authorization' => "Bearer #{ENV['yelp_api_key']}"}
      parse_data(conn.get(url))
    end

    def conn
      Faraday.new("https://api.yelp.com/v3/")
    end

    def parse_data(response)
      parsed = JSON.parse(response.body, symbolize_names: true)
    end

    # def location_search(location)
    #   get_url("businesses/search", { query: location, api_key: ENV['yelp_api_key']})
    # end

    def location_search(location, food)
      # get_url("businesses/search?location=#{location}&categories=#{food}")
      Faraday.get("https://api.yelp.com/v3/businesses/search?",
      params: {location: location, categories: food},
      headers: {Authorization: "Bearer #{ENV['yelp_api_key']}"})
    end
  end
end

# conn = Faraday.new(
#   url: 'http://httpbingo.org',
#   params: {param: '1'},
#   headers: {'Authorization' => "bearer #{ENV['yelp_api_key']}"}
# )
