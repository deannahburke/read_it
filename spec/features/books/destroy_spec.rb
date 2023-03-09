require 'rails_helper'

RSpec.describe 'destroy a book', type: :feature do 
    it 'can delete a book' do
        certain_hunger = Book.create!(title: "A Certain Hunger", publication_year: 2020, author: "Chelsea G. Summers", genre: "Horror", summary: "A food critic turns cannibal", wishlisted: false)
        roadside_picnic = Book.create!(title: "Roadside Picnic", publication_year: 1972, author: "Arkady Strugatsky", genre: "Sci-Fi", summary: "Alien invasion of small town in Russia", wishlisted: false)

        visit "/books"

        within "#book-#{certain_hunger.id}" do 
            expect(page).to have_button("Delete")
            click_button "Delete"
        end 

        expect(current_path).to eq("/books")
        expect(page).to_not have_content("A Certain Hunger")
        expect(page).to have_content("Roadside Picnic")
    end
end