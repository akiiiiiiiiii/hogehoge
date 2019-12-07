class ImpressionsController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @impression = Impression.new(impression_params)
    @impression.book_id = @book.id
    @impression.user_id = current_user.id
    if @impression.save
     redirect_back(fallback_location: root_path)
    else
     redirect_back(fallback_location: root_path)
    end
  end

  private

  def impression_params
    params.require(:impression).permit(:content)
  end

end
