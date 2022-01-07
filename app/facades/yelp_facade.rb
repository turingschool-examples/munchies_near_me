class YelpFacade
  def self.restaurants(city, search)
    restaurants = YelpService.restaurants(city, search)[:businesses]

    restaurants.map do |restaurant|
      restaurant = Restaurant.new(restaurant)
    end
  end
end