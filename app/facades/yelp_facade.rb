class YelpFacade
  class << self
    def get_15_closest_restaurants(city, craving)
      params = {term: craving, location: city, sort_by: "distance", limit: "15"}

      restaurant_data = YelpService.get_restaurants(params)

      # fos_data[:fos].first(10).map do |fo_data|
      #   Fo.new(fo_data)
      # end
    end
  end
end
