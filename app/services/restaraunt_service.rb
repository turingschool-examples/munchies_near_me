class RestarauntService
  def self.find(search_term, city)
    content = conn.get("/v3/businesses/search?location=#{city}&search_term=#{search_term}")
    results = (parse_response(content))[:businesses]
    container = []
    results.each do |restaurant|
      container << Restaurant.new(restaurant, city)
    end
    container.sort_by {|obj| obj.distance}.shift(15)

  end

  def self.parse_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://api.yelp.com",
      headers: { 'Authorization' => ENV['yelp_api_key'] })
  end
end
