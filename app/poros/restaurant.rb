class Restaurant
  attr_reader :name,
              :phone_number,
              :rating,
              :address,
              :distance

  def initialize(restaurant)
    @name = restaurant[:name]
    @phone_number = fixed_number(restaurant[:phone])
    @rating = restaurant[:rating]
    @address = string_address(restaurant[:location])
    @distance = rounded_distance(restaurant[:distance])
  end

  def string_address(address_hash)
    address = address_hash[:address1].to_s + ' ' + address_hash[:address2].to_s + ' ' + address_hash[:address3].to_s
    address + ', ' + address_hash[:city] + ', ' + address_hash[:state] + ', ' + address_hash[:zip_code]
  end

  def rounded_distance(distance)
    distance.round(2)
  end

  def fixed_number(number)
    number.slice!(2..-1)
  end
end
