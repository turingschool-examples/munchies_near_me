class Yelp
  attr_reader :name, :rating, :phone_number, :address, :distance, :categories
  def initialize(attr, distance)
    @name = attr[:name]
    @rating = attr[:rating]
    @phone_number = attr[:display_phone]
    @address = attr[:location][:address1]
    @distance = distance
  end
end
