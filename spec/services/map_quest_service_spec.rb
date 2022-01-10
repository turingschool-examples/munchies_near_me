require 'rails_helper'

 RSpec.describe MapQuestService, :vcr do
   it "can get the distance " do
     start = 'Denver,CO'
     finish = 'Boulder,CO'
     json = MapQuestService.get_service(start,finish)

     expect(json[:route].class).to eq(Hash)
     expect(json[:route]).to have_key(:distance)
     expect(json[:route][:distance].class).to eq(Float)
   end
 end
