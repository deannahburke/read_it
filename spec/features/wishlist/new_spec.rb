require 'rails_helper'

RSpec.describe 'create book' do 
    it 'can create new book with form' do 
        visit "/wishlist/new"
        
        expect(current_path).to eq("/wishlist/new")
        fill_in "Title", with: "How to Win Friends and Influence People"
        fill_in "Author", with: "Dale Carnegie"
        select 1936, :from => "Publication Year"
        fill_in "Genre", with: "Self Help"
        fill_in "Summary", with: "Great Depression era book to help you make friends"
        click_button "Add"

        expect(current_path).to eq("/wishlist")
        expect(page).to have_content("How to Win Friends and Influence People")
        expect(page).to have_content("Dale Carnegie")
    end
end