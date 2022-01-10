class YelpFacade

  def self.restaurant_search(location, craving)
    restaurant_data = YelpService.find_restaurants(location, craving)
    restaurants = restaurant_data.map do |restaurant|
      Restaurant.new(restaurant)
    end

    mapquest_data = restaurants.each do |restaurant|
      restaurant.distance = MapquestFacade.distance(address, restaurant.display_address)
    end

    mapquest_data.sort_by(&:distance)
  end

end
