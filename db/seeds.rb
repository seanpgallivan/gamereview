###### My API requests ###########################
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
# request.body = "fields game, url; where id = (#{cover_ids.join(',')});"
# covers = JSON.parse(http.request(request).body)



# genres.each {|genre| Genre.find_or_create_by(name: genre["name"], slug: genre["slug"])}
# modes.each {|mode| Mode.find_or_create_by(name: mode["name"], slug: mode["slug"])}
# games.each do |game| 
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
#         igdb_id: game["id"])
# end




# seed = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
# "https://picsum.photos/seed/#{seed}/250/150"



# testgames = [{"id"=>6,
#   "aggregated_rating"=>90.0,
#   "aggregated_rating_count"=>1,
#   "cover"=>82641,
#   "first_release_date"=>969494400,
#   "game_modes"=>[1, 3],
#   "genres"=>[12],
#   "name"=>"Baldur's Gate II: Shadows Of Amn",
#   "rating"=>92.42168915484591,
#   "rating_count"=>262,
#   "slug"=>"baldur-s-gate-ii-shadows-of-amn",
#   "storyline"=>
#    "Some time after the events described in Baldur's Gate, the protagonist and his friends Imoen, Minsc and Jaheira have been captured by an elven mage called Jon Irenicus. His intentions and connection to the heroes unknown, Irenicus conducts experiments on them, holding them in cages somewhere in his vast underground complex. During his absence, the heroes manage to escape, and soon find themselves in the city of Athkatla in the country of Amn, where they confront Irenicus. However, at that moment several wizards arrive and arrest both Irenicus and Imoen for unlicensed use of magic. The first task at hand is to raise the money needed to rescue Imoen, before facing Irenicus again and unraveling his true goals. \n" +
#    " \n" +
#    "Baldur's Gate II: Shadows of Amn is a party-based role-playing game using the AD&D rules. The basic gameplay is similar to that of its predecessor: the player navigates a party of up to six active combatants over isometric environments, conversing with non-playable characters using branching dialogue, and fighting enemies in real-time, free-movement combat that can be paused to issue specific orders to the characters. World traveling now occurs by selecting locations on a map rather than exploring wilderness areas to reach the destination. However, the game world is larger than in the previous game, with more individual locations to visit and side quests to perform. \n" +
#    " \n" +
#    "Being a direct sequel to Baldur's Gate, the game lets the player control stronger, higher-level characters from the onset. The main character can also be imported from the previous installment. Three new classes (sorcerer, monk, and barbarian) are available along with those that were present in the original game. Characters can also acquire specializations within most of the classes: a paladin, for instance, can become a dragon slayer or an inquisitor. Weapon proficiencies are more specific: for example, instead of just specializing in blades, the player can choose between proficiencies in long swords, two-handed swords, bastard swords, katanas and scimitars. There are many new types of weapons, armor, and magic spells in the sequel. \n" +
#    " \n" +
#    "Sixteen characters may join the party during the course of the story. Each of them has his or her own motivations, sometimes conflicting with those of other characters. Scripted events and interaction with playable as well as non-playable characters have been noticeably increased in the sequel. The main character can also romance some of the companions by choosing appropriate behavior and dialogue lines. The game allows the player to make many moral decisions and pursue character-specific side quests unrelated to the main story. Many of the companions bring their own quests, and unique tasks are available for the main character depending on his or her class.",
#   "summary"=>
#    "Every World has conflict. Good and evil. Friend and foe. Safety and danger. In Baldur's Gate II: Shadows of Amn, you'll find yourself between these factions. This epic sequel to the Roleplaying Game of the Year will immerse you in a world of intrigue, adventure and fierce combat where your ability to discern the difference between these sides - with the assistance of steel and spell - determines your fate. Set in the Forgotten Realms campaign setting, Baldur's Gate II is the most stunning Advanced Dungeons and Dragons game to date."},
#  {"id"=>11,
#   "aggregated_rating"=>72.3333333333333,
#   "aggregated_rating_count"=>4,
#   "cover"=>77203,
#   "first_release_date"=>1100563200,
#   "game_modes"=>[1],
#   "genres"=>[5, 12, 25],
#   "name"=>"Vampire: The Masquerade - Bloodlines",
#   "rating"=>88.4986688043294,
#   "rating_count"=>332,
#   "slug"=>"vampire-the-masquerade-bloodlines",
#   "storyline"=>
#    "The game plunges players into the dark and gritty vampire underworld of modern-day L.A. as a creature of the night. Players will develop their character's powers, interact with other characters and embark on story-driven quests as they battle mortals and other vampires with an incredible array of vampire powers and weapons.",
#   "summary"=>
#    "A first- and third-person Western RPG based on the Vampire: The Masquerade tabletop RPG with a heavy emphasis on character building and role-playing, in which the player embodies a fledgling vampire under the guidance of vampire prince Sebastian LaCroix. The player must serve the prince while getting to know the various factions of vampires in Los Angeles and forming their own political views."},
#  {"id"=>13,
#   "cover"=>85750,
#   "first_release_date"=>875577600,
#   "game_modes"=>[1],
#   "genres"=>[12, 16],
#   "name"=>"Fallout",
#   "rating"=>86.6000647043454,
#   "rating_count"=>311,
#   "slug"=>"fallout",
#   "storyline"=>
#    "Fallout is set in the timeline which deviated from our own some time after World War II, and where technology, politics and culture followed a different course. In the 21st century, a worldwide conflict is brought on by global petroleum shortage. Several nations begin warring with one another for the last of non-renewable resources, namely oil and uranium; known as the Resource Wars, fighting begins in April 2052 and ends in 2077. China invades Alaska in the winter of 2066, causing the United States to go to war with China and using Canadian resources to supply their war efforts, despite Canadian complaints. Eventually the United States violently annexes Canada in February 2076 and reclaims Alaska nearly a year later. After years of conflict, on October 23, 2077, a global nuclear war occurs. It is not known who strikes first, but in less than a few hours most major cities are destroyed. The effects of the war do not fade for the next hundred years and as a consequence, human society has collapsed leaving only survivor settlements barely able to make out a living in the barren wasteland, while a few live through the occurrence in underground fallout shelters known as Vaults. One of these, Vault 13, is the protagonist's home, where the game begins. \n" +
#    " \n" +
#    "In Vault 13, in 2161 in Southern California, 84 years after the nuclear war. The Water Chip, a computer chip responsible for the water recycling and pumping machinery, breaks. The Vault Overseer tasks the protagonist, the Vault Dweller, with finding a replacement. He or she is given a portable device called the \"Pip-Boy 2000\" that keeps track of map-making, objectives, and bookkeeping. Armed with the Pip-Boy 2000 and meager equipment, including a small sum of bottle caps which are used as currency in the post-apocalyptic world, the main character is sent off on the quest.",
#   "summary"=>
#    "The Vault Dweller is tasked with exploring post-nuclear California in order to retrieve a water chip to replace the broken chip of Vault 13, their home, which they are the first person to ever leave. The player will engage in Western RPG character building and turn-based tactical combat while getting to know settlements and factions of people, mutants and ghouls through branching dialogue trees."},
#  {"id"=>14,
#   "cover"=>85753,
#   "first_release_date"=>907113600,
#   "game_modes"=>[1],
#   "genres"=>[12, 16],
#   "name"=>"Fallout 2",
#   "rating"=>90.2942278282255,
#   "rating_count"=>391,
#   "slug"=>"fallout-2",
#   "storyline"=>
#    "In 2241, the primitive Arroyo suffers the worst drought on record. Faced with the calamity, the village elder asks the direct descendant of the Vault Dweller, referred to as the Chosen One, to perform the quest of retrieving a Garden of Eden Creation Kit (GECK) for Arroyo. The GECK is a device that can create thriving communities out of the post-apocalyptic wasteland.[3] The player, assuming the role of the Chosen One, is given nothing more than the Vault Dweller's jumpsuit, a RobCo PIPBoy 2000 handheld device, a Vault 13 water flask, a spear and some cash to start on his mission.",
#   "summary"=>
#    "A turn-based tactical Western RPG in which the Chosen One is tasked with exploring post-nuclear California to locate and retrieve the fabled Garden of Eden Creation Kit for their famine-stricken tribe, while coming into contact through branching dialogue trees with numerous tribes, factions and micro-civilizations, each with their own virtues, vices, socioeconomic situations and political agendas."},
#  {"id"=>15,
#   "aggregated_rating"=>89.1,
#   "aggregated_rating_count"=>12,
#   "cover"=>85754,
#   "first_release_date"=>1225152000,
#   "game_modes"=>[1],
#   "genres"=>[5, 12],
#   "name"=>"Fallout 3",
#   "rating"=>84.43528739956889,
#   "rating_count"=>907,
#   "slug"=>"fallout-3",
#   "storyline"=>
#    "The introductory sequence introduces the player to their character's father James, a doctor and scientist in Vault 101. James frequently makes comments about the player character's deceased mother Catherine, and her favorite Bible passage, Revelation 21:6, which speaks of \"the waters of life\". \n" +
#    " \n" +
#    "The main quest begins after the player is forced to flee Vault 101 when James leaves the vault, throwing it into anarchy and causing the paranoid Overseer to send his security force after the player. The search for James takes the character on a journey through the Wasteland, first to the nearby town of Megaton, named for the undetonated atomic bomb at the center of town, then the Galaxy News Radio station, whose enthusiastic DJ Three Dog gives the player the moniker of \"The Lone Wanderer\". The player travels to Rivet City, a derelict aircraft carrier now serving as a fortified human settlement. Here the player meets Doctor Li, a scientist who worked alongside the player's father. Doctor Li informs the player of Project Purity, a plan conceived by Catherine and James to purify all the water in the Tidal Basin and eventually the entire Potomac River with a giant water purifier built in the Jefferson Memorial. However, continued delays and Catherine's death during childbirth put an end to the project, and James took the player's character as a newborn to raise them in the safety of Vault 101. \n" +
#    "After investigating the Jefferson Memorial, the Lone Wanderer tracks James to Vault 112, and frees him from a virtual reality program being run by the Vault's sadistic Overseer, Dr. Braun. James and the player return to Rivet City, and James reveals he sought out Braun for information on the Garden of Eden Creation Kit (G.E.C.K.), a device that contains the components needed to finally activate Project Purity. James and Doctor Li lead a team of Rivet City scientists to the memorial with intent to restart the project, but the memorial is invaded by the Enclave, a powerful military organization formed from the remnants of the pre-War United States government. James floods the project's control room with radiation to stop the Enclave military leader, Colonel Augustus Autumn, from taking control of it, killing himself (but Autumn survives), his last words urging his child to run. The Lone Wanderer and Dr. Li flee to the ruins of the Pentagon, now a base for the Brotherhood of Steel and now known as the Citadel. With Project Purity still inoperational even with the Enclave occupying the site, the player travels to Vault 87 to find a G.E.C.K. and finish James's work. The player finds the Vault to be a testing site for the FEV (Forced Evolutionary Virus), and the source of the Super Mutants in the Capital Wasteland. After the player acquires the G.E.C.K., the Wanderer is ambushed by the Enclave and captured. \n" +
#    "At the Enclave base at Raven Rock, the player is freed from their cell by the Enclave leader, President John Henry Eden, who requests a private audience with them. En route to his office however, Colonel Autumn defies Eden's orders and takes command of the Enclave military, ordering them to kill the player. Fighting their way to Eden's office, the player discovers Eden is actually a sentient ZAX series supercomputer who took control of the Enclave after their defeat in Fallout 2 on the West Coast thirty years ago. Eden wishes to repeat the plan of then-President Dick Richardson using Project Purity, infecting the water with a modified strain of FEV that will make it toxic to any mutated life. This plan will kill most life in the wasteland including humans, but the Enclave, due to their genetic \"purity\" as a result of their isolation, will be immune and free to take control of the area. The Wanderer, provided with a sample of the new F.E.V., is given a choice to either leave peacefully or convince Eden to self-destruct the entire base. The Lone Wanderer escapes Raven Rock and returns to the Citadel. \n" +
#    " \n" +
#    "With the knowledge they possess, the G.E.C.K. and the means to activate Project Purity, the Brotherhood assault the Jefferson Memorial, spearheaded by a giant robot named Liberty Prime. In the control room of Project Purity the player confronts Colonel Autumn, and has the choice to persuade him to give up or kill him. Dr. Li informs the player that the purifier is ready to be activated, but the activation code must be input manually, and also that the control room is flooded with lethal amounts of radiation. The Lone Wanderer is forced to choose between sending Sarah Lyons of the Brotherhood inside the extremely irradiated purifier or entering themselves. Whoever enters into the chamber inputs the code hinted at through the game, that being 21:6, and dies from a radiation spike.",
#   "summary"=>
#    "Fallout 3 from the creators of the award-winning Oblivion, featuring one of the most realized game worlds ever created. Create any kind of character you want and explore the open wastes of post-apocalyptic Washington D.C. Every minute is a fight for survival as you encounter Super Mutants, Ghouls, Raiders and other dangers of the Wasteland. Prepare for the future. \n" +
#    " \n" +
#    "The third game in the Fallout series, Fallout 3 is a singleplayer action role-playing game (RPG) set in a post-apocalyptic Washington DC. Combining the horrific insanity of the Cold War era theory of mutually assured destruction gone terribly wrong, with the kitschy naivety of American 1950s nuclear propaganda, Fallout 3 will satisfy both players familiar with the popular first two games in its series as well as those coming to the franchise for the first time."}]


# v = testgames.reduce([]) {|m, game| m << game["cover"]}
# v.join(,)
