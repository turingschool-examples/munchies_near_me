class Yelp
  attr_reader :name, :rating, :phone_number, :city, :state, :distance, :categories
  def initialize(attr)
    @name = attr[:name]
    @rating = attr[:rating]
    @phone_number = attr[:display_phone]
    @city = attr[:city]
    @state = attr[:state]
    @distance = attr[:distance]
  end
end
