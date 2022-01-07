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
      # maximum limit is 50 from the yelp API, so only the top 50 restaurants end up getting sorted into the closest 15 per the docs, this could be overcome using the offset parameter to get up to 1000 results, but I'm sticking with just 50 for now
      params= { location: location, term: term, limit: 50 }
      parse('businesses/search', params)
    end
  end
end
