class YelpService

  def self.find_restaurants(location, craving)
    call_api("/v3/businesses/search?term=location=#{location}&term=#{craving}&categories=restaurants&limit=15&sort_by=distance")
  end

  private

  def call_api(path)
    response = conn.get(path)
    parse(response)
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://api.yelp.com', headers: { Authorization: [ENV['YELP_API_KEY'] })
  end

end
