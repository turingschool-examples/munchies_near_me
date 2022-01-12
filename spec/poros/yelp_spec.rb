require 'rails_helper'

 RSpec.describe Yelp do
   it "builds appropiate restaurants and attributes" do
     attr = {
               id: "1ZACfh-FZH6M_fWiB2dFow",
               name: "Lanning's Downtown Grill",
               rating: 4.0,
               display_phone: "(620) 251-1618",
               location: {address1: "Coffeyville, KS"}
            }
    distance = 33
    restaurant = Yelp.new(attr, distance)

    expect(restaurant).to be_a(Yelp)
    expect(restaurant.name).to eq("Lanning's Downtown Grill")
    expect(restaurant.rating).to eq(4.0)
    expect(restaurant.phone_number).to eq("(620) 251-1618")
    expect(restaurant.address).to eq("Coffeyville, KS")
    expect(restaurant.distance).to eq(33)
   end
 end
