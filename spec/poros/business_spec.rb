require 'rails_helper'

RSpec.describe "Business" do
  it 'exists' do
    business = Business.new(id: "dsfRniRgfbDjC8os848B6A",
                      name: "Bern's Steak House",
                      phone: "+18132512421",
                      rating: 4.5,
                      location: {
                        display_addres: ["1208 S Howard Ave",
                        "Tampa, FL 33606"]},
                      distance: 7477.666944365418)

    expect(business).to be_an_instance_of(Business)
  end
end
