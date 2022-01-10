class Restaurant
  attr_reader :name,
              :phone,
              :rating,
              :address,
              :distance

  def initialize(restaurant, city)
    @name = restaurant[:name]
    @phone = restaurant[:phone]
    @rating = restaurant[:rating]
    @address = restaurant[:location][:display_address].to_s.delete! '[]"'
    @distance = MapService.calculate_distance((@address.gsub(' ', '+').delete ','), city)
  end
end
