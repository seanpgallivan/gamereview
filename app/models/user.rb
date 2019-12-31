class User < ApplicationRecord
    has_many :user_games
    has_many :games, through: :user_games
    has_secure_password
    validates :name, uniqueness: true
end