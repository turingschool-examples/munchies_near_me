class YelpFacade
  def self.get_search_restaurant_data(city, craving)

    restaurant_list = YelpService.get_search_restaurant_data(city, craving)

    restaurant_list[:businesses].map do |business|
      distance = MapService.get_distance(city, business[:location][:display_address])

        restaurant = Restaurant.new(business, distance)
    end
  end
end
