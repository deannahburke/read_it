require 'rails_helper'

RSpec.describe 'wishlist index page', type: :feature do 
    it 'has prepopulated form data and can update book on index page' do
        roadside_picnic = Book.create!(title: "Roadside Picnic", publication_year: 1972, author: "Arkady Strugatsky", genre: "Sci-Fi", summary: "Alien invasion of small town in Russia", wishlisted: true)

        visit "/wishlist/#{roadside_picnic.id}/edit"

        fill_in :author, with: "Boris Strugatsky"
        click_button "Update"

        expect(current_path).to eq("/wishlist")
        expect(page).to have_content("Boris Strugatsky")
        expect(page).to_not have_content("Arkady Strugatsky")
    end
end