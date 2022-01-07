class MapquestFacade
  class << self
    def get_distance(from, to)
      params = {from: from, to: to}

      directions = MapquestService.get_directions(params)
      distance = directions[:route][:distance]
    end
  end
end
