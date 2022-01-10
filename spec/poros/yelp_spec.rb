require 'rails_helper'

 RSpec.describe Yelp do
   it "builds appropiate restaurants and attributes" do
     attr = {
               id: "1ZACfh-FZH6M_fWiB2dFow",
               name: "Lanning's Downtown Grill",
               rating: 4.0,
               display_phone: "(620) 251-1618",
               city: "Coffeyville",
               state: "KS",
               distance: 33
            }

    restaurant = Yelp.new(attr)

    expect(restaurant).to be_a(Yelp)
    expect(restaurant.name).to eq("Lanning's Downtown Grill")
    expect(restaurant.rating).to eq(4.0)
    expect(restaurant.display_phone).to eq("(620) 251-1618")
    expect(restaurant.city).to eq("Coffeyville")
    expect(restaurant.state).to eq("KS")
    expect(restaurant.distance).to eq(33)
   end
 end
