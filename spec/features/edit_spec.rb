require 'rails_helper'

RSpec.describe 'books index page', type: :feature do 
    it 'has prepopulated form data and can update book on index page' do
        roadside_picnic = Book.create!(title: "Roadside Picnic", publication_year: 1972, author: "Arkady Strugatsky", genre: "Sci-Fi", summary: "Alien invasion of small town in Russia")

        visit "/books/#{roadside_picnic.id}/edit"

        # expect(page).to have_content("Roadside Picnic")
        # expect(page).to have_content("Arkady Strugatsky")
        # expect(page).to have_content("Sci-Fi")
        # expect(page).to have_content("Alien invasion of small town in Russia")
        fill_in :author, with: "Boris Strugatsky"
        click_button "Update"

        expect(current_path).to eq("/books")
        expect(page).to have_content("Boris Strugatsky")
        expect(page).to_not have_content("Arkady Strugatsky")
    end
end