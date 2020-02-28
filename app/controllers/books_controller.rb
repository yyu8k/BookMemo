class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(title: book_params[:title], author: book_params[:author], text: book_params[:text])
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :text)
  end

end
