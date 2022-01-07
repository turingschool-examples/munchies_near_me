class RestaurantsService
  class << self
    def conn
      Faraday.new('https://api.yelp.com/v3/')
    end

    def parse(url, params)
      headers = { 'Authorization': "Bearer #{ENV['YELP_API_KEY']}" }
      response = conn.get(url, params, headers)
      JSON.parse(response.body, symbolize_names: true)
    end

    def restaurants_search(location, term)
      params= { location: location, term: term }
      parse('businesses/search', params)
    end
  end
end
