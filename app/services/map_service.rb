class MapService
  class << self
    def conn
      Faraday.new('http://mapquestapi.com/')
    end

    def parse(url, params)
      response = conn.get(url, params)
      JSON.parse(response.body, symbolize_names: true)
    end

    def distance(origin, destination)
      params = { key: ENV['mapquest_api_key'], from: origin, to: destination }
      test = parse('directions/v2/route', params)[:route][:distance].round(2)
    end
  end
end