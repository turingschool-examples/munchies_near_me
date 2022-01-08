class YelpService
  class << self
    def restaurant_locations(location, term)
      conn = Faraday.new('https://api.yelp.com/')

      result = conn.get('v3/businesses/search') do |req|
        req.headers['Authorization'] = ENV['yelp_api_key']
        req.params['location'] = "#{location}"
        req.params['term'] = "#{term}"
        req.params['limit'] = 15
      end

      cats  = JSON.parse(result.body, symbolize_names: true)[:businesses]
    end
  end
end
