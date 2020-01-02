class Mode < ApplicationRecord
    has_many :game_modes
    has_many :games, through: :game_modes
end
