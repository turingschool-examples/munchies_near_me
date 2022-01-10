class SearchFacade

  def self.search_results(location, craving)
    results = SearchService.search(location, craving)

    locations = results[:businesses].map do |data|
      arrival = data[:location][:display_address].join(', ')
      data[:distance] = MapService.directions(location, arrival)
      Location.new(data)
    end

    locations.sort_by do |location|
        location.distance
    end
  end
end
