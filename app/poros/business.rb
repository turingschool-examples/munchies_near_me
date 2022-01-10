class Business
attr_reader :id,
            :name,
            :phone,
            :rating,
            :address,
            :distance

  def initialize(info)
    binding.pry
    @id = info[:id]
    @name = info[:name]
    @phone = info[:phone]
    @rating = info[:rating]
    @address = info[:location][:display_address]
    @distance = info[:distance]
    #this may be wrong. not sure what distance is relative to here
  end

end
