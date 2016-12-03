class UsersController < ApplicationController

  def index
  end

  def show
  end

  def create
    create_user user_params
    return redirect_to root_path unless @user.save
    redirect_to root_path, notice: 'Created user'
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
