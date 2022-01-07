class YelpFacade
  class << self
    def get_15_closest_restaurants(city, craving)
      params = {term: craving, location: city, sort_by: "distance", limit: "15"}

      restaurants_data = YelpService.get_restaurants(params)

      restaurants_data[:businesses].map do |restaurant_data|
        Restaurant.new(restaurant_data)
      end
    end
  end
end
