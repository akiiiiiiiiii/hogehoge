class BooksController < ApplicationController

  def index
    @q = Book.ransack(params[:q])
    @books = @q.result(distinct: true).page(params[:page]).per(10)
    @impressions_count = Impression.where(book_id: @q.id).count
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save!
     redirect_to "/"
    else
     render "new"
   end
  end

  def show
    @book = Book.find(params[:id])
    @impressions = @book.impressions
    @impression = Impression.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to "/"
    else
      render "edit"
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to "/"
  end

   private

   def book_params
    params.require(:book).permit(:title, :description)
  end
end
