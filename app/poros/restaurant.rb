class Restaurant
  attr_reader :name,
              :phone,
              :rating,
              :street_address,
              :city_state_zip,
              :distance,
              :craving

  def initialize(data, craving, city)
    @name           = data[:name]
    @phone          = data[:display_phone]
    @rating         = data[:rating]
    @street_address = data[:location][:display_address][0]
    @city_state_zip = data[:location][:display_address][1]
    @lat            = data[:coordinates][:latitude]
    @long           = data[:coordinates][:longitude]
    @craving        = craving
    @city           = city
    @distance       = find_distance
  end

  def find_distance
    service = MapquestService.get_distance(@city, @lat, @long)
    service[:route][:distance]
  end
end
