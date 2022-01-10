class YelpService < BaseService
  def self.get_service(city, craving)
     response = conn('https://api.yelp.com/v3').get('businesses/search') do |f|
       f.params['location'] = city
       f.params['categories'] = craving
       f.headers['Authorization'] = "Bearer #{ENV["yelp_key"]}"
     end
     get_json(response)
   end
end
