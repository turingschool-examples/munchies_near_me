require "rails_helper"

RSpec.describe "", type: :feature do
  describe "" do
    before(:each) do
      visit "/"
      fill_in :city, with: "Denver"
      fill_in :craving, with: "mexican"
      click_on "Search For Restaurants"
      expect(current_path).to eq("/search")
    end

    it "returns 15 closest restaurants" do
    end

    it "returns name, phone number, rating, and human-readable address" do
    end

    it "returns distance from the restaurant to the city" do
    end
  end
end

#
# As a visitor
# When I visit “/“
# And fill in the existing form with a city (ex: “Denver, CO”) and my food craving
# (ex: thai, american, bar, chinese, etc.) and hit submit,
# I’m taken to a page where I can see a list of the 15 closest restuarants
# for that craving in that city.
# And each restaurant lists their name, phone number, rating, human readable address,
# and the distance it is from that city.
# And the restaurants are listed in order of proximity (closest to furthest)
