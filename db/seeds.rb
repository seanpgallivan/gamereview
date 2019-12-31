###### API Base ###########################
require 'net/https'
http = Net::HTTP.new('api-v3.igdb.com',443)
http.use_ssl = true

# request = Net::HTTP::Post.new(URI('https://api-v3.igdb.com/genres'), {'user-key' => "bea99e40326fc66d0145d65bff646876"})
# request.body = 'fields name, slug; sort id; limit 500;'
# genres = JSON.parse(http.request(request).body)

# request = Net::HTTP::Post.new(URI('https://api-v3.igdb.com/game_modes'), {'user-key' => "bea99e40326fc66d0145d65bff646876"})
# request.body = 'fields name, slug; sort id; limit 500;'
# modes = JSON.parse(http.request(request).body)

# request = Net::HTTP::Post.new(URI('https://api-v3.igdb.com/games'), {'user-key' => "bea99e40326fc66d0145d65bff646876"})
# request.body = 'fields name, aggregated_rating, aggregated_rating_count, cover, game_modes, genres, rating, rating_count, first_release_date, slug, storyline, summary; where rating_count > 200 & rating > 70; sort id; limit 500;'
# games = JSON.parse(http.request(request).body)

# cover_ids = games.reduce([]) {|m, game| m << game["cover"] }

# request = Net::HTTP::Post.new(URI('https://api-v3.igdb.com/covers'), {'user-key' => "bea99e40326fc66d0145d65bff646876"})
# request.body = "fields game, url; where id = (#{cover_ids.join(',')}); sort game; limit 500;"
# covers = JSON.parse(http.request(request).body)


# genres.each {|genre| Genre.find_or_create_by(name: genre["name"], slug: genre["slug"])}
# modes.each {|mode| Mode.find_or_create_by(name: mode["name"], slug: mode["slug"])}
# games.each_with_index do |game, i|
#     if covers[i]["game"] == game["id"] && covers[i]["id"] == game["cover"]
#         gamecover = covers[i]["url"].split('/').last
#     else
#         gamecover = nil
#     end

#     Game.find_or_create_by(
#         title: game["name"],
#         slug: game["slug"],
#         summary: game["summary"],
#         story: game["storyline"],
#         released: game["first_release_date"],
#         igdb_rating: game["rating"],
#         igdb_rating_count: game["rating_count"],
#         critic_rating: game["aggregated_rating"],
#         critic_rating_count: game["aggregated_rating_count"],
#         cover_url: gamecover
#     )
#     game["genres"].each do |genre|
#         GameGenre.find_or_create_by(game_id: Game.find_by(title: game["name"]).id, genre_id: genre)
#     end
#     game["game_modes"].each do |mode|
#         GameMode.find_or_create_by(game_id: Game.find_by(title: game["name"]).id, mode_id: mode)
#     end
# end




# seed = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
# "https://picsum.photos/seed/#{seed}/250/150"