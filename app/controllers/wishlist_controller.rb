class WishlistController < ApplicationController
    def index
        @book = Book.all
    end

    def new
    end

    def create
        book = Book.new(book_params)
        if book.save
            book.update_attribute(:wishlisted, true)
            redirect_to "/wishlist"
            flash[:message] = "Book added to Wishlist!"
        else 
            flash[:alert] = "Please fill out all fields."
            redirect_to "/wishlist/new"
        end
    end
    
private
    def book_params
        params.permit(:title, :author, :publication_year, :genre, :summary, :rating)
    end
end