class MapquestFacade

  def self.distance(from, to)
    distance = MapquestService.route(from, to)[:route][:distance]
  end
  
end
