class YelpService
  def self.connection(endpoint)
    conn = Faraday.new(url: "https://api.yelp.com", headers: { Authorization: ENV['yelp_key'] })
    response = conn.get(endpoint)

    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.restaurants(address, q)
    connection("/v3/businesses/search?location=#{address}&term=#{q}")
  end
end
