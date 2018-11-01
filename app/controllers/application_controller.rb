class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  def index
  end

  def header
  end

  def logged_in?
    session[:user_id].present?
  end

  def current_user
    if logged_in?
      User.find(session[:user_id])
    end
  end

  def home
    if logged_in?
      @user=current_user
    else
      redirect_to '/'
    end
  end

  private

    def require_login
      redirect_to login_path unless session.include? :user_id
    end

end
