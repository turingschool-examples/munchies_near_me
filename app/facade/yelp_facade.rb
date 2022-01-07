class YelpFacade

  def self.restaurants(location, craving)
    restaurants = YelpService.all_results(location, craving)
    require 'pry'; binding.pry
    restaurants.map do |restaurant|
      Restaurant.new(restaurant)
    end
  end
end