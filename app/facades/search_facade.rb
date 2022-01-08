class SearchFacade
  class << self
    def restaurant_results(location, term)
      restaurants = YelpService.restaurant_locations(location, term)

      results = restaurants.map do |restaurant|
        destination = restaurant[:location][:display_address].join(', ')
        restaurant[:distance] = MapService.locations(location, destination)[:distance]
        Restaurant.new(restaurant)
      end

      results.sort_by do |result|
        result.distance
      end
    end
  end
end
