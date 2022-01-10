class MapQuestService < BaseService
  def self.get_service(start,finish)
     response = conn('http://www.mapquestapi.com/directions/v2/route').get do |f|
       f.params['key'] = ENV["consumer_key"]
       f.params['from'] = start
       f.params['to'] = finish
     end
     get_json(response)
   end
end
