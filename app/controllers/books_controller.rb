class BooksController < ApplicationController
    def index
        @books = Book.all
    end

    def new

    end

    def create
        book = Book.new(book_params)
        if book.save
            redirect_to "/books"
            flash[:message] = "Book added!"
        else 
            flash[:alert] = "Please fill out all fields."
            redirect_to "/books/new"
        end
    end

    def destroy
        book = Book.find(params[:book_id])
        book.destroy
        redirect_to "/books"
    end

    def edit
        @book = Book.find(params[:book_id])
    end

    def update
        # binding.pry
        @book = Book.find(params[:book_id])
        @book.update(book_params)
        redirect_to "/books"
        # binding.pry
    end
private
    def book_params
        params.permit(:title, :author, :publication_year, :genre, :summary)
    end
end 