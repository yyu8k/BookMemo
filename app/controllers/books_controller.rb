class BooksController < ApplicationController

  before_action :set_book, only: [:edit, :destroy, :update, :show]

  def index
    @books = Book.page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @books = Book.new
  end

  def create
    Book.create(title: book_params[:title], author: book_params[:author], text: book_params[:text])
  end

  def destroy
    @books.destroy
    redirect_to root_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :text)
  end

  def set_book
    @books = Book.find(params[:id])
  end

end
