class Book < ApplicationRecord
    validates_presence_of :title, :author, :summary, :genre, :publication_year
end
