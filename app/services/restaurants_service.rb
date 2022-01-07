class RestaurantsService
  def self.conn
    Faraday.new
  end
end
