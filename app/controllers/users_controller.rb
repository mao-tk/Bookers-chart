class UsersController < ApplicationController
  def index
    @book = Book.new
    @users = User.order(id: :DESC)
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
  end

  def edit
  end
end
