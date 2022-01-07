class Restaurant
  attr_reader :name,
              :phone,
              :rating,
              :street_address,
              :city_state_zip,
              :distance,
              :craving

  def initialize(data, craving)
    @name           = data[:name]
    @phone          = data[:phone][2..-1]
    @rating         = data[:rating]
    @street_address = data[:location][:display_address][0]
    @city_state_zip = data[:location][:display_address][1]
    @lat            = data[:coordinates][:latitude]
    @long           = data[:coordinates][:longitude]
    @craving        = craving
    @distance       = nil
  end

  def find_distance
    @distance = MapQuestService.new(@lat, @long)
    
  end
end
