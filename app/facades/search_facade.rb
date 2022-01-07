class SearchFacade
  class << self
    def find_locations(location, category)
      YelpService.business_search(location, category)[:businesses]
    end
  end
end
