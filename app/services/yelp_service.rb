class YelpService
  def self.find_business(location, craving)
    content = conn.get("/v3/businesses/search?term=#{craving}&location=#{location}&categories=restaurants&limit=15&sort_by=distance")
    businesses = parse_response(content)[:businesses]
    businesses.map do |restaurant|
      Restaurant.new(restaurant)
    end
  end

  def self.parse_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(
      url: "https://api.yelp.com",
      headers: {'Authorization' => "Bearer #{ENV['yelp_key']}"}
    )
  end
end
