class Restaurant
  attr_reader :name,
              :phone,
              :rating,
              :address,
              :distance

  def initialize(data)
    @name     = data[:name]
    @phone    = data[:phone]
    @rating   = data[:rating]
    @address  = data[:display_address][0] if data[:display_address]
    @distance = data[:map_distance]
  end
end
