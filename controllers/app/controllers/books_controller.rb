class BooksController < ApplicationController
  def index
    # your code here
   @books ||= Book.all
  end

  def new
    # your code here
    JSON render: :new
  end

  def create
    # your code here
    Book.create(book_params)
    redirect_to books_url
  end

  def destroy
    # your code here
    Book.find_by_id(params[:id]).destroy
    redirect_to books_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
