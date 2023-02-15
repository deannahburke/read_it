class Book < ApplicationRecord
    validates_presence_of :title, :author, :summary, :genre, :publication_year 
    validates :rating, numericality: { in: 0..5 }, presence: true 
end
