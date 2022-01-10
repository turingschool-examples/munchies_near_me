class MapService
  def self.calculate_distance(api_friendly_address, city)
    content = conn.get("/directions/v2/route?from=#{api_friendly_address}&to=#{city}&key=#{ENV['mapquest_api_key']}")
    results = (parse_response(content))
    results[:route][:distance]
  end

  def self.parse_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "http://www.mapquestapi.com")
  end
end
