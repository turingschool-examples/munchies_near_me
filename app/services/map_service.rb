class MapService
  class << self
    def locations(location1, location2)
      conn = Faraday.new('http://www.mapquestapi.com/')

      result = conn.get('directions/v2/route') do |req|
        req.params['key'] = ENV['mapquest_api_key']
        req.params['from'] = "#{location1}"
        req.params['to'] = "#{location2}"
      end

      JSON.parse(result.body, symbolize_names: true)[:route]
    end
  end
end
