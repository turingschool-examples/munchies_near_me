class RestaurantsFacade
  def self.restaurants_search(location, query)
    restaurants = RestaurantsService.restaurants_search(location, query)
  end

  def self.distance(origin, destination)
    DistancesService.route(origin, destination)[:route][:distance]
  end

  def self.restaurant_results(location, query)
    restaurants = restaurants_search(location, query)[:businesses]

    results = restaurants.map do |restaurant|
      destination = restaurant[:location][:address1]
      restaurant[:map_distance] = distance(location, destination)
      Restaurant.new(restaurant)
    end

    results.sort_by! { |restaurant| restaurant.distance }
    results[0..14]
  end
end
