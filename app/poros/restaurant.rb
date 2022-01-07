class Restaurant

  attr_reader :name,
              :phone,
              :rating,
              :address,
              :distance

  def initialize(info)
    @name = info[:name]
    @phone = info[:display_phone]
    @rating = info[:rating]
    @address = info[:location][:display_address]
    @distance = info[:distance]
  end

  def address
    @address.join(", ")

  end

end
