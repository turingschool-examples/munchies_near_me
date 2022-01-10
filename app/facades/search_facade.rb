class SearchFacade
  class << self
    def location(location, food_type)
      test = SearchService.location_search(location, food_type)
      test.map do |business|
        Business.new(business)
      end
    end
  end
end
