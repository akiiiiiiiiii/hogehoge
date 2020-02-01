class UserBooksController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @book_user = BookUser.new(book_user_params)
    @book_user.book_id = @book.id
    @book_user.user_id = current_user.id
    @book_user.save
  end

  private

  def book_user_params
    params.require(:book_user).permit(:status)
  end
end
