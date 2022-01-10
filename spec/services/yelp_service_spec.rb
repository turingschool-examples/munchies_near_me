require 'rails_helper'

 RSpec.describe YelpService, :vcr do
   it "can get the businesses" do
     city = 'Denver, CO'
     craving = 'chinese'
     json = YelpService.get_service(city, craving)
   end
 end
