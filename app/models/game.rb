class Game < ApplicationRecord
    has_many :user_games
    has_many :users, through: :user_games
    has_many :game_genres
    has_many :genres, through: :game_genres
    has_many :game_modes
    has_many :modes, through: :game_modes

    def self.all_alph
        self.order("title")
    end

    def rating
        self.user_games.sum("rating")
    end

    def rating_count
        self.user_games.count
    end

end
