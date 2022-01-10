class YelpFacade

  def self.restaurants(location, craving)
    restaurants = YelpService.all_results(location, craving)
    restaurants.map do |restaurant|
      Restaurant.new(restaurant)
    end[0..14]
  end

  def self.distance(origin, destination)
    MapService.distance(origin, destination)
  end
end