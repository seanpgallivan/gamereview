class User < ApplicationRecord
    has_many :user_games
    has_many :games, through: :user_games
    has_secure_password
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :name, length: {in: 4..20}
    validates :password, presence: true
    validates :password, length: {in: 6..20}
end