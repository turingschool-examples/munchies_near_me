class SearchFacade
  class << self
    def find_locations(location, category)
      YelpService.business_search(location, category)[:businesses]
    end

    def directions(location, category)
      find_locations(location, category)
    end

    def restaurants(location, category)
      all_restaurants = find_locations(location, category)
      all_restaurants.map do |info|
        Restaurant.new(info)
      end
    end
  end
end
