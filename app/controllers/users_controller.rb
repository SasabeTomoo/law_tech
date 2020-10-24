class UsersController < ApplicationController
  def new
    if logged_in?
      redirect_to explain1_path
    end
   @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to explain1_path(@user.id)
      session[:user_id] = @user.id
    else
      render :new
    end
  end
  def show
    @user = User.find(params[:id])
    # authenticate_user: application_helper.rb記載のモジュールメソッド
    authenticate_user
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
