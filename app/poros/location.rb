class Location
  attr_reader :name, :phone_number, :rating, :address, :distance

  def initialize(data)
    @name = data[:name]
    @phone_number = data[:display_phone]
    @rating = data[:rating]
    @address = data[:location][:display_address]
    @distance = data[:distance][:route][:distance]
  end

  def full_address
    @address.join(" ")
  end
end
