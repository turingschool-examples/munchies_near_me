class CravingService
  def self.find_restaurants(city, craving)
    response = Faraday.get("https://api.yelp.com/v3/businesses/search") do |req|
          req.headers['Authorization'] = "#{ENV['yelp_api']}"
          req.params['location'] = city
          req.params['categories'] = craving
        end
    JSON.parse(response.body, symbolize_names: true)
  end
end
