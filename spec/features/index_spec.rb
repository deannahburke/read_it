require 'rails_helper'

RSpec.describe 'books index page', type: :feature do 
    it 'displays all books' do 
        certain_hunger = Book.create!(title: "A Certain Hunger", publication_year: 2020, author: "Chelsea G. Summers", genre: "Horror", summary: "A food critic turns cannibal")
        blind_willow = Book.create!(title: "Blind Willow, Sleeping Woman", publication_year: 2008, author: "Haruki Murakami", genre: "Short Story", summary: "Collection of short stories")
        roadside_picnic = Book.create!(title: "Roadside Picnic", publication_year: 1972, author: "Arkady Strugatsky", genre: "Sci-Fi", summary: "Alien invasion of small town in Russia")

        visit '/books'

        expect(page).to have_content(certain_hunger.title)
        expect(page).to have_content(blind_willow.title)
        expect(page).to have_content(roadside_picnic.title)
        expect(page).to have_content(certain_hunger.author)
        expect(page).to have_content(blind_willow.author)
        expect(page).to have_content(roadside_picnic.author)
        expect(page).to have_content(certain_hunger.publication_year)
        expect(page).to have_content(blind_willow.publication_year)
        expect(page).to have_content(certain_hunger.summary)
        expect(page).to have_content(roadside_picnic.genre)
        expect(page).to have_content(roadside_picnic.summary)
        expect(page).to have_content(blind_willow.genre)
    end
end