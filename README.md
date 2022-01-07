# Nearest Fuel Station

### Versions

Ruby 2.7.2

Rails 5.2.6

### Set Up

- Clone this repo
- `bundle install`
- `bundle exec figaro install`
- `rails db:create`
- `rails s`

When you navigate to localhost:3000, you should see a form to fill out a city and a craving. When you hit the submit button, you should see an error saying that the SearchController does not exist -- this is where y'all will start!

You will be searching for the nearest businesses in that particular city, that offer the food that you’re craving. 

## Story 

```
As a visitor
When I visit “/“
And fill in the existing form with a city (ex: “Denver, CO”) and my food craving (ex: thai, american, bar, chinese, etc.) and hit submit,
I’m taken to a page where I can see a list of the 15 closest businesses for that craving in that city. 
And each business/restaurant lists their name, phone number, rating, human readable address, and the distance it is from that city. 
And the businesses/restaurants are listed in order of proximity (closest to furthest)
```
