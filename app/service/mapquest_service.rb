class MapquestService
  def self.get_distance(city, lat, long)
    response = Faraday.get("http://www.mapquestapi.com/directions/v2/route?key=#{ENV['mapquest_api_key']}&from=#{city}&to=#{lat},#{long}")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end
