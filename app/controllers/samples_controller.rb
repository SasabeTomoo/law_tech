class SamplesController < ApplicationController
  before_action :admin_user
  def index
    @samples = Sample.all
  end
  def import
    # fileはtmpに自動で一時保存される
    Sample.import(params[:file])
    redirect_to samples_url
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
  def admin_user
    redirect_to root_path, notice:"管理者以外はアクセスできない" unless current_user.admin?
  end
end
