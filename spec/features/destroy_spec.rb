require 'rails_helper'

RSpec.describe 'destroy a book', type: :feature do 
    it 'can delete a book' do
        certain_hunger = Book.create!(title: "A Certain Hunger", publication_year: 2020, author: "Chelsea G. Summers", genre: "Horror", summary: "A food critic turns cannibal")
        blind_willow = Book.create!(title: "Blind Willow, Sleeping Woman", publication_year: 2008, author: "Haruki Murakami", genre: "Short Story", summary: "Collection of short stories")
        
        visit "/books"
        
        within "#book-#{certain_hunger.id}" do 
            expect(page).to have_button("Delete")
            click_button "Delete"
        end 
        expect(page).to_not have_content("A Certain Hunger")
        expect(page).to have_content("Blind Willow, Sleeping Woman")
    end
end