class YelpFacade
  def self.yelp_search(location, craving)
    payload = YelpService.get_service(location, craving)
    payload[:businesses].map do |data|
      map_data = MapQuestService.get_service(location, data[:location][:address1])
      distance = map_data[:route][:distance]
      Yelp.new(data, distance)
    end
  end
end
# play around with apis first( what i get back)
# thats what API needs. high level what does each API need and provide
# service, facade, poros
