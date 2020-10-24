class Admin::UsersController < ApplicationController
  class Admin::UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    before_action :admin_user

    def index
      @users = User.select(:id, :name, :email, :admin).order(id: :asc)
    end
    def new
        @user = User.new
    end
    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to admin_users_path
      else
        render :new
      end
    end
    def show
    end
    def edit
    end
    def update
      if @user.update(user_params)
        redirect_to admin_users_path, notice: "プロフィールを編集しました！"
      else
        render :edit
      end
    end
    def destroy
      @user.destroy
      redirect_to admin_users_path
    end

    private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin)
    end
    def set_user
      @user = User.find(params[:id])
    end
    def admin_user
      redirect_to root_path, notice:"管理者以外はアクセスできない" unless current_user.admin?
    end
  end
end
