class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
  end

  def edit
  end

  def index
    @user = current_user
    @users = User.all
  end

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
