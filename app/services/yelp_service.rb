class YelpService 
  class << self 
    def get_craving_restaurants(address, craving)
      response = conn.get("/v3/businesses/search?term=restaurants,#{craving}&location=#{address}&limit=15")
      parse_data(response)
    end

    private
    
    def conn
      Faraday.new('https://api.yelp.com') do |x|
        x.headers['Authorization'] = ENV['yelp_api_key']
      end
    end 

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end 
  end 
end 