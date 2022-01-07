class DistancesService
  class << self
    def conn
      Faraday.new('http://mapquestapi.com/')
    end

    def parse(url, params)
      response = conn.get(url, params)
      JSON.parse(response.body, symbolize_names: true)
    end

    def route(origin, destination)
      params = { key: ENV['MAPQUEST_API_KEY'], from: origin, to: destination }
      parse('directions/v2/route', params)
    end
  end
end
