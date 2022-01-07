class Restaurant
  attr_reader :name,
              :phone_number,
              :rating,
              :address,
              :distance

  def initialize(data)
    @name = data[:name]
    @phone_number = data[:display_phone]
    @rating = data[:rating]
    @address = full_address(data[:location][:display_address])
    @distance = nil
  end

  def set_distance(distance)
    @distance = distance
  end

  def full_address(location_array)
    location_array.join(', ')
  end
  
end