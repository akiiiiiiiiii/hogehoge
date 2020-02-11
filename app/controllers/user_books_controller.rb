class UserBooksController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @user_book = UserBook.new(user_book_params)
    @user_book.book_id = @book.id
    @user_book.user_id = current_user.id
    @user_book.save
  end

  private

  def user_book_params
    params.require(:user_book).permit(:status)
  end
end
