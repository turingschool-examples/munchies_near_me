class YelpFacade
  class << self 
    def get_restaurants(address, craving)
      YelpService.get_craving_restaurants(address, craving)
    end 
  end 
end 