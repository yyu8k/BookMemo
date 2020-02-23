class BooksController < ApplicationController

  def index
  end

  def create
    Book.create(title: book_params[:title], author: book_params[:author], text: book_params[:text], user_id: current_user.id)
  end

  private

  def book_params
    params.permit(:title, :author, :text)
  end

end
