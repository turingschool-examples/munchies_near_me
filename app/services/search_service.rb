class SearchService

  def self.search(location, craving)
    response = conn(location, craving).get do |faraday|
      faraday.params['location'] = location
      faraday.params['limit'] = 15
      faraday.params['term'] = craving
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn(location, craving)
    Faraday.new("https://api.yelp.com/v3/businesses/search?#{location}&#{craving}") do |faraday|
      faraday.headers['Authorization'] = ENV['api_key']
    end
  end
end
