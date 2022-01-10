class MapService
  class << self
    def distance(restaurant, city)
      response = conn.get("/directions/v2/route?from=#{city}&to=#{restaurant}")
      parse_data(response)
    end

    private 

    def conn 
      Faraday.new("http://www.mapquestapi.com") do |x|
        x.params['key'] = ENV['map_api_key']
      end 
    end 

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end 
end 