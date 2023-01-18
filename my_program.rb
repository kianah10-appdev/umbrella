p "Where are you located?"

user_location = gets.chomp

p user_location 

gmaps_url = "https://maps.googleapis.com/maps/api/geocode/json?address=Merchandise%20Mart%20Chicago&key=AIzaSyB92cYxPcYqgjwBJfWlwDQw_7yjuyU3tpA" + "&key=" + ENV.fetch("GMAPS_KEY")


p gmaps_url

require("open-uri")

raw_data = URI.open(gmaps_url).read

require("json")

parsed_data = JSON.parse(raw_data)

p parsed_data

results_array = parsed_data.fetch("results")

first_result = results_array.at(0)

p results_array.at(0)

x = URI.open(gmaps_url)

geo_hash = first_result.fetch("geometry")

loc_hash = geo_hash.fetch("location")

latitude = loc_hash.fetch("lat")

longitude = loc_hash.fetch("lng")


p latitude

p longitude
