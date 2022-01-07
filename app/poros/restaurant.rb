class Restaurant
  attr_reader :name,
              :phone_number,
              :rating,
              :address

  def initialize(data)
    @name = data[:name]
    @phone_number = data[:phone]
    @rating = data[:rating].to_s
    @address = data[:location][:display_address].join(" ")
  end
end