class MapquestService
    def self.directions(city, address)
      conn = get_url(url: "https://open.mapquestapi.com")

      response = conn.post("/directions/v2/routematrix?key=#{ENV['mapquest_key']}&from=#{city}&to=#{address}")
      JSON.parse(response.body, symbolize_names: true)
    end

private
    def self.get_url(url)
      Faraday.new(url)
    end
end