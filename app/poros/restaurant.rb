class Restaurant
  attr_reader :name,
              :phone,
              :rating,
              :address,
              :distance,
              :craving

  def initialize(data, craving)
    @name    = data[:name]
    @phone   = data[:phone]
    @rating  = data[:rating]
    @address = data[:location][:display_address]
    @lat     = data[:coordinates][:latitude]
    @long    = data[:coordinates][:longitude]
    @craving = craving
  end

  def find_distance

  end
end
