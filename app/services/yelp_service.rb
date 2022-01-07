class YelpService
  class << self
    def get_restaurants(params = {})
      response = conn.get("/v3/businesses/search") do |f|
        f.params = params
        f.headers["Authorization"] = ENV["yelp_api_key"]
      end

      parse_data(response)
    end

    private
    def conn
      Faraday.new("https://api.yelp.com")
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
