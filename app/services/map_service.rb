class MapService

  def self.get_distance(from, to)
    conn = Faraday.new('http://www.mapquestapi.com')
    response = conn.get('/directions/v2/route') do |f|
      f.params['key'] = ENV['mapquest_api_key']
      f.params['from'] = "#{from}"
      f.params['to'] = "#{to}"
    end

    distance_data = JSON.parse(response.body, symbolize_names: true)

  end


end
# class MapService < BaseService
#
#   def self.get_distance(from, to)
#     response = conn('http://www.mapquestapi.com').get("/directions/v2/route") do |f|
#       f.params['key'] = ENV['mapquest_api_key']
#       f.params['from'] = "#{from}"
#       f.params['to'] = "#{to}"
#     end
#     format_json(response)
#   end
# end
