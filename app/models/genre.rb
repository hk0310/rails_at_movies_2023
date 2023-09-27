class Genre < ApplicationRecord
    has_many :movie_genres
    has_many :movie, through: :movie_genres

    validates :name, presence: true, uniqueness: true 
end
