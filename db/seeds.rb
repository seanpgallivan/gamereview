###### My API request ############################
require 'net/https'
http = Net::HTTP.new('api-v3.igdb.com',443)
http.use_ssl = true
request = Net::HTTP::Post.new(URI('https://api-v3.igdb.com/games'), {'user-key' => "bea99e40326fc66d0145d65bff646876"})
request.body = 'fields name, aggregated_rating, aggregated_rating_count, cover, game_modes, genres, rating, rating_count, first_release_date, slug, storyline, summary; where rating_count > 200 & rating > 70; sort id; limit 500;'
games = JSON.parse(http.request(request).body)
games.each {|game| Game.find_or_create_by(name: game["name"], lowercase_name: game["name"].downcase, igdb_rating: game["rating"], release_date: game["first_release_date"], igdb_rating_count: game["rating_count"])}
##################################################
