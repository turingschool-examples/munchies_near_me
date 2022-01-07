class YelpFacade
  def self.restaurants(address, q)
    restaurants = YelpService.restaurants(address, q)[:businesses]

    restaurants.map do |restaurant_data|
      Restaurant.new(restaurant_data)
    end
  end
end