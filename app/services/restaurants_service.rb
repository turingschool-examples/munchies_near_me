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
      # maximum limit is 50 per the yelp API docs, so only the top 50 restaurants end up getting returned. this could be overcome using the offset parameter to get up to 1000 results, but I'm sticking with just 25 for now
      params= { location: location, term: term, limit: 25 }
      parse('businesses/search', params)
    end
  end
end
