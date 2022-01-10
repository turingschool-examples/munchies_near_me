class YelpFacade
  def self.yelp_search(location, craving)
    payload = YelpService.get_service(location, craving)
    payload[:businesses].map do |data|
      Yelp.new(data, MapQuestService.get_service(location, data[:location][:address1]))
    end
  end
end
