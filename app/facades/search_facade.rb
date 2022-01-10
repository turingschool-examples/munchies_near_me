class SearchFacade
  class << self
    def find_locations(location, category)
      YelpService.business_search(location, category)[:businesses]
    end

    def rest_hash(location, category)
      yelp_restaurants = find_locations(location, category)
      yelp_restaurants.map do |restaurant|
        {
          name: restaurant[:name],
          rating: restaurant[:rating],
          display_phone: restaurant[:display_phone],
          display_address: restaurant[:location][:display_address],
          mq_distance: MapquestService.route(location, restaurant[:location][:display_address])[:route][:distance]
        }
      end
    end

    def restaurants(location, category)
      all_restaurants = rest_hash(location, category)
      all_restaurants.map do |info|
        Restaurant.new(info)
      end
    end
  end
end
