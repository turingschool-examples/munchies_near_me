class YelpService
  def self.restaurants(city, search)
    conn = get_url(
      url: "https://api.yelp.com",
      headers: {'Authorization': "Bearer #{ENV['yelp_key']}", 'Cache-Control': 'no-cache'})

    response = conn.get("/v3/businesses/search?location=#{city}&term=#{search}&limit=15&sort_by=distance")
    JSON.parse(response.body, symbolize_names: true)
  end
private
    def self.get_url(url)
      Faraday.new(url)
    end
end