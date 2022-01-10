class Restaurant
    attr_reader :name,
                :phone_number,
                :rating,
                :address,
                :distance

  def initialize(restaurant, distance)
    @name = restaurant[:name]
    @phone_number = restaurant[:phone]
    @rating = restaurant[:rating]
    @address = restaurant[:location][:display_address].join(', ')
    @distance = distance.to_s + ' ' + 'miles'
  end

  def self.sort_by_distance(restaurants)
    restaurants.sort_by { |restaurant| restaurant.distance }
  end 
end 