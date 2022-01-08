require 'rails_helper'

RSpec.describe Restaurant do
  it 'creates poro for restaurant' do
      attr =  {
            "id": "qMc717YSPhV7Tq4OReKiBQ",
            "alias": "tatsu-izakaya-denver-2",
            "name": "Tatsu Izakaya",
            "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/-nbvUuRu9O2N-dT6PRUmGQ/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/tatsu-izakaya-denver-2?adjust_creative=uvJID030jCYa9A9u20M24w&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=uvJID030jCYa9A9u20M24w",
            "review_count": 166,
            "categories": [
                {
                    "alias": "sushi",
                    "title": "Sushi Bars"
                },
                {
                    "alias": "ramen",
                    "title": "Ramen"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.67956,
                "longitude": -104.95891
            },
            "transactions": [
                "restaurant_reservation",
                "pickup",
                "delivery"
            ],
            "price": "$$",
            "location": {
                "address1": "2022 S University Blvd",
                "address2": nil,
                "address3": "",
                "city": "Denver",
                "zip_code": "80210",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "2022 S University Blvd",
                    "Denver, CO 80210"
                ]
            },
            "phone": "+13037778388",
            "display_phone": "(303) 777-8388",
            "distance": 6304.915825514968
        }

    restaurant = Restaurant.new(attr)

    expect(restaurant.name).to eq('Tatsu Izakaya')
    expect(restaurant.address).to eq("2022 S University Blvd, Denver, CO 80210")
    expect(restaurant.phone).to eq('+13037778388')
    expect(restaurant.rating).to eq(4.5)
    expect(restaurant.distance.round(2)).to eq(6304.92)
  end
end
