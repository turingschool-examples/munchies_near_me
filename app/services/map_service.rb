class MapService

  def self.directions(location_1, location_2)
    response = conn.get do |faraday|
      faraday.params['from'] = location_1
      faraday.params['to'] = location_2
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("http://www.mapquestapi.com/directions/v2/route") do |faraday|
      faraday.params['key'] = ENV['map_key']
    end
  end
end
