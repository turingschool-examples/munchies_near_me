class MapquestFacade
  def self.directions(city, to_address)
    directions = MapquestService.directions(city, to_address)

    Direction.new(directions)
  end
end