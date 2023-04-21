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
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    flash[:notice] = "You have updated user successfully."
    redirect_to user_path(user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end
end
