class Restaurant
  attr_reader :name, :phone, :rating, :address, :distance

  def initialize(data)
    @name = data[:name]
    @phone = data[:phone]
    @rating = data[:rating]
    @address = data[:location][:display_address].join(', ')
    @distance = data[:distance]
  end
end
