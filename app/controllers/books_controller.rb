class BooksController < ApplicationController
  def index
    @books = Book.paginate :page => params[:page], :per_page => 10
  end

  def new 
    
  end

  def create
    @book = Book.new(book_params)
    @book.save 
    redirect_to @book
  end

  def show
    @book = Book.find(params[:id])
  end

  private
    def book_params
    	params.require(:book).permit(:title, :name, :surname, :title, :subtitle, :isbn, :color, :category, :tags, :lease, :cover)
    end

end


