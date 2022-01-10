require 'rails_helper'

 RSpec.describe 'facade', :vcr do
   it "creates yelp objects" do
     restaurants = YelpFacade.yelp_search("Denver, CO", "Chinese")
     restaurants.each do |restaurant|
       expect(restaurant).to be_a(Restaurant)
     end
   end
 end
