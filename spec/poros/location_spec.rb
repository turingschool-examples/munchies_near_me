require 'rails_helper'

RSpec.describe Location do
  xit 'exists with attributes' do
    data = {:id=>"8lKL5Bxt620aqh0ulDByIg",
 :alias=>"sushi-den-denver",
 :name=>"Sushi Den",
 :image_url=>"https://s3-media1.fl.yelpcdn.com/bphoto/7A-JuUmtjJ3VgFy9DbHv_g/o.jpg",
 :is_closed=>false,
 :url=>"https://www.yelp.com/biz/sushi-den-denver?adjust_creative=huqryh6pQSdTxqHcq_cyZw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=huqryh6pQSdTxqHcq_cyZw",
 :review_count=>1964,
 :categories=>[{:alias=>"japanese", :title=>"Japanese"}, {:alias=>"sushi", :title=>"Sushi Bars"}, {:alias=>"bars", :title=>"Bars"}],
 :rating=>4.5,
 :coordinates=>{:latitude=>39.68962, :longitude=>-104.980763},
 :transactions=>[],
 :price=>"$$$",
 :location=>{:address1=>"1487 S Pearl St", :address2=>"", :address3=>"", :city=>"Denver", :zip_code=>"80210", :country=>"US", :state=>"CO", :display_address=>["1487 S Pearl St", "Denver, CO 80210"]},
 :phone=>"+13037770826",
 :display_phone=>"(303) 777-0826",
 :distance=>5182.987196490936}


    location = Location.new(data)

    expect(location.name).to eq('Sushi Den')
    expect(location.rating).to eq(4.5)
    expect(location.phone_number).to eq("(303) 777-0826")
    expect(location.address).to eq(["1487 S Pearl St", "Denver, CO 80210"])
  end
end
