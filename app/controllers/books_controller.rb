class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(book_params)
    render "index"
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update!(book_params)
    render "show"
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to("/")
  end

   private

   def book_params
    params.require(:book).permit(:title, :description)
  end
end
