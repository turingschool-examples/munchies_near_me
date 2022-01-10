class Restaurant
  attr_accessor :name, :display_phone, :rating, :display_address, :distance

  def initialize(restaurant_data)
    @name = restaurant_data[:name]
    @display_phone = restaurant_data[:display_phone]
    @rating = restaurant_data[:rating]
    @display_address = restaurant_data[:location][:display_address].join(', ')
    @distance = restaurant_data[:distance]
  end
end
