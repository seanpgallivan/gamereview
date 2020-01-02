class UserGame < ApplicationRecord
    belongs_to :user
    belongs_to :game
    validates :rating, presence: true
    validates :rating, numericality: {in: 0..100}
    validates :review, presence: true
    validates :review, length: {minimum: 4}
    validates :hours_played, presence: true
    validates :hours_played, numericality: {minimum: 0}
end
