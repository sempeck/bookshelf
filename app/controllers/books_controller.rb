class BooksController < ApplicationController
  def index
    @books = Book.paginate :page => params[:page], :per_page => 10
  end
end

# User.paginate(:page => 1).class




# @books = Books.paginate :page => params[:page], :per_page => 10