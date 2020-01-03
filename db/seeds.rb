require 'net/https'
require 'faker'

###### API Base ###########################
http = Net::HTTP.new('api-v3.igdb.com',443)
http.use_ssl = true



# print "API REQUESTS... "
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
# puts "done!"



# print "SEEDING GENRES... "
# genres.each {|genre| Genre.find_or_create_by(name: genre["name"], slug: genre["slug"])}
# puts "done!"

# print "SEEDING MODES... "
# modes.each {|mode| Mode.find_or_create_by(name: mode["name"], slug: mode["slug"])}
# puts "done!"

# print "SEEDING GAMES... "
# games.each_with_index do |game, i|
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
#         cover_url: covers[i]["url"].split('/').last)
#     game["genres"].each do |genre|
#         new_genre_id = Genre.find_by(name: genres.find {|g| g["id"] == genre}["name"]).id
#         GameGenre.find_or_create_by(game_id: Game.find_by(title: game["name"]).id, genre_id: new_genre_id)
#     end
#     game["game_modes"].each do |mode|
#         GameMode.find_or_create_by(game_id: Game.find_by(title: game["name"]).id, mode_id: mode)
#     end
#     print "#{i}... " if i % 20 == 0
# end
# puts "done!"



# print "SEEDING USERS... "
# chars = (0...36).map{ |i| i.to_s 36}
# fav_games = Game.all.map {|g| g.id}
# gmc = Game.all.count
# gmc.times { fav_games << nil}
# fav_genres = Genre.all.map {|g| g.id}
# gnc = Genre.all.count
# gnc.times { fav_genres << nil}
# fav_modes = Mode.all.map {|m| m.id}
# mdc = Mode.all.count
# mdc.times { fav_modes << nil}
# i = 0
# 100.times {
#     password = (0...10).map { chars[rand(36)] }.join
#     User.create(name: Faker::Name.first_name.downcase + Faker::Name.last_name.downcase,
#         password: password,
#         password_confirmation: password,
#         favorite_game: fav_games[rand(gmc * 2)],
#         favorite_genre: fav_genres[rand(gnc * 2)],
#         favorite_mode: fav_modes[rand(mdc * 2)]
#         )
#     print "#{i}... " if i % 20 == 0
#     i += 1
#     }
# puts "done!"



# print "SEEDING USER_GAMES... "
# i = 0
# 2000.times {
#     UserGame.create(user_id: User.all.sample.id,
#         game_id: Game.all.sample.id,
#         rating: rand(1..100),
#         review: Faker::Lorem.paragraph(sentence_count: rand(1..10)),
#         hours_played: rand(1..100)
#     )
#     print "#{i}... " if i % 50 == 0
#     i += 1
#     }
# puts "done!"







# seed = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
# "https://picsum.photos/seed/#{seed}/250/150"