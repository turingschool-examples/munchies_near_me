class Restaurant
  attr_reader :name,
              :phone,
              :rating

  def initialize(data)
    @name = data[:name]
    @phone = data[:display_phone]
    @rating = data[:rating]
    @display_address = data[:location][:display_address]
    @distance = data[:distance]
  end

  def miles_away
    (@distance / 1609.34).round(2)
  end

  def address
    string = ''
    @display_address.each {|part| string += part += ' '}
    string
  end
end