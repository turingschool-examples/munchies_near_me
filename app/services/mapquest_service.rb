class MapquestService
  class << self
    def route(location, restaurant)
      parse_data(conn.get("/directions/v2/route?from=#{location}&to=#{restaurant}"))
    end

    def conn
      Faraday.new(url: 'http://www.mapquestapi.com') do |f|
        f.params['key'] = ENV['MAPQUEST_API']
      end
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
