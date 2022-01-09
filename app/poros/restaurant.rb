class Restaurant
  attr_reader :name, :phone_number, :rating, :address, :distance

  def initialize(business, distance)
    @name = business[:name]
    @phone_number = business[:phone]
    @rating = business[:rating]
    @address = business[:location][:display_address]
    @distance = distance[:route][:distance]
  end
end
