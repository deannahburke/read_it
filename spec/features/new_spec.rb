require 'rails_helper'

RSpec.describe 'create book' do 
    it 'can create new book with form' do 
        visit "/books/new"
        
        expect(current_path).to eq("/books/new")
        fill_in "Title", with: "How to Win Friends and Influence People"
        fill_in "Author", with: "Dale Carnegie"
        select 1936, :from => "Publication Year"
        fill_in "Genre", with: "Self Help"
        fill_in "Summary", with: "Great Depression era book to help you make friends"
        click_button "Add"

        expect(current_path).to eq("/books")
        expect(page).to have_content("How to Win Friends and Influence People")
        expect(page).to have_content("Dale Carnegie")
        expect(page).to have_content(1936)
        expect(page).to have_content("Self Help")
        expect(page).to have_content("Great Depression era book to help you make friends")
    end

    it 'will flash error message if all fields not filled out' do 
        visit "/books/new"
        
        expect(current_path).to eq("/books/new")
        fill_in "Title", with: "How to Win Friends and Influence People"
        fill_in "Author", with: ""
        select 1936, :from => "Publication Year"
        fill_in "Genre", with: "Self Help"
        fill_in "Summary", with: "Great Depression era book to help you make friends"
        click_button "Add"
        
        expect(current_path).to eq("/books/new")
        expect(page).to have_content("Please fill out all fields.")
    end
end