class MapquestService
  def self.connection(endpoint)
    conn = Faraday.new(url: "http://www.mapquestapi.com", params: { key: ENV['mapquest_key'] })
    response = conn.get(endpoint)

    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.route(from, to)
    connection("/directions/v2/route?from=#{from}&to=#{to}")
  end
end