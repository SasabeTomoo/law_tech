class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  include AdjustmentsHelper
  # 追加（間違っている可能性あり）
  def authenticate_user
    # 現在ログイン中のユーザが存在しない場合、ログインページにリダイレクトさせる。
    if @current_user == nil
      flash[:notice] = t('notice.login_needed')
      redirect_to new_session_path
    end
  end
end
