require 'rails_helper'

RSpec.describe 'Wishlist Index Page', type: :feature do 
    it 'has a button to add a book to the wishlist' do 
        visit '/wishlist'

        expect(page).to have_button("Add Book")
        click_button "Add Book"
        expect(current_path).to eq("/wishlist/new")
    end
end