class YelpService < BaseService
  def self.get_search_restaurant_data(city, craving)
    response = conn('https://api.yelp.com').get('/v3/businesses/search') do |f|
      f.headers['Authorization'] = "Bearer #{ENV['yelp_api_key']}"
      f.params['location'] = "#{city}"
      f.params['term'] = "#{craving}"
    end

    format_json(response)
    
  end
end
