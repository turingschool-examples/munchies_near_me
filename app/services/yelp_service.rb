class YelpService
  class << self
    def search(address, search)
      response = Faraday.get('https://api.yelp.com/v3/businesses/search', {location: address, term: search, categories: 'restaurants', limit: 15}, {Authorization: "Bearer #{ENV['yelp_key']}"})

      # the api has a sort_by option, but it overides best_match and provides bad results (not taking craving into account) so I chose to use an enumerable instead. was thinking of putting that in the facade, but I already had it here and was running out of time
      JSON.parse(response.body, symbolize_names: true)[:businesses].sort_by {|resturant| resturant[:distance]}
    end
  end
end