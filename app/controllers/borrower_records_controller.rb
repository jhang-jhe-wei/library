class BorrowerRecordsController < ApplicationController
  before_action :set_book, only: [:create]
  before_action :authenticate_user!

  def create
    BookService.new(@book, current_user).borrow!
    redirect_to books_path, notice: 'borrowed successfully'
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end
end
