class Restaurant
  attr_reader :name, :phone_number, :rating, :address

  def initialize(data)

    @name = data[:name]
    @phone_number = data[:phone]
    @rating = data[:rating]
    @address = data[:location][:address1] + ", " + data[:location][:city] + ", " + data[:location][:state] + " " + data[:location][:zip_code]
  end
end
