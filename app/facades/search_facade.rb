class SearchFacade
  def initialize(city, search)
    @city = city
    @search = search
  end

  def restaurants
    service.map do |restaurant|
      Restaurant.new(restaurant)
    end
  end

  def service
    YelpService.search(@city, @search)
  end
end