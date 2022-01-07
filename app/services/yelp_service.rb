class YelpService
  def self.connection(endpoint)
    conn = Faraday.new(url: "https://api.yelp.com", headers: { Authorization: 'Bearer 29328aTBMjyyJLTbR3_pKLuoGHGVZIqDtu-Eu0FI2a7o35XfBntIUNEMuiE5Vgzy-Sopn8qFri1TPw3_PKOKZJTqlJB63XDeXGXONSHr47xD-LXu3kUFZx7tdLLYYXYx' })
    response = conn.get(endpoint)

    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.restaurants(address, q)
    connection("/v3/businesses/search?location=#{address}&term=#{q}")
  end
end
