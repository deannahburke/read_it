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

    def edit
        @book = Book.find(params[:book_id])
    end

    def update
        @book = Book.find(params[:book_id])
        @book.update(book_params)
        @book.update_attribute(:wishlisted, true)
        # binding.pry
        redirect_to "/wishlist"
    end
    
private
    def book_params
        params.permit(:title, :author, :publication_year, :genre, :summary, :rating, :wishlisted)
    end
end