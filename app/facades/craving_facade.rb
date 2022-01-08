class CravingFacade
  def self.restaurants(city, craving)
    restaurants = CravingService.find_restaurants(city, craving)
    restaurants[:businesses].map do |restaurant|
      Restaurant.new(restaurant, craving, city)
    end
  end
end
