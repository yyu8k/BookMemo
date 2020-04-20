class BooksController < ApplicationController

  before_action :set_book, only: [:edit, :destroy, :update, :show]

  def index
    @books = Book.page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @books = Book.new
  end

  def create
    @books = Book.new(book_params)
    if @books.save
    else        
      redirect_to root_path
    end
  end

  def edit
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
