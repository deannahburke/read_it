class Book < ApplicationRecord
    MAX_RATING = 5

    validates_presence_of :title, :author, :summary, :genre, :publication_year
    validates :rating, numericality: { in: 0..MAX_RATING }, presence: true 
end
