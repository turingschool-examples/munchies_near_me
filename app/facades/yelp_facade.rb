class YelpFacade
  def self.restaurants(address, q)
    restaurants_data = YelpService.restaurants(address, q)[:businesses][0..14]

    restaurants = restaurants_data.map do |restaurant_data|
      Restaurant.new(restaurant_data)
    end

    restaurants.each do |restaurant|
      restaurant.distance = MapquestFacade.distance(address, restaurant.display_address)
    end.sort_by(&:distance)
  end
end