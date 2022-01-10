class MapFacade
  class << self 
    def get_distance(restaurants, city)
      restaurants[:businesses].map do |restaurant|
        distance = MapService.distance(restaurant[:location][:display_address].join(', '), city)[:route][:distance]
        Restaurant.new(restaurant, distance)
      end 
    end 
  end 
end 