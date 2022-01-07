class MapquestService
  class << self

    def get_directions(params = {})
      path = "/directions/v2/route"
      response = conn.get(path) do |f|
        f.params = params
        f.params[:key] = ENV["mapquest_api_key"]
      end

      parse(response)
    end


    private

    def conn
      Faraday.new("http://www.mapquestapi.com")
    end

    def parse(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end

end
