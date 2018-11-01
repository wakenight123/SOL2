class SessionsController < ApplicationController

  def new
    if logged_in?
      redirect_to experiences_path
    else
      redirect_to '/login'
    end
  end

  def create
    if params[:user][:email].blank? || params[:user][:password].blank?
      redirect_to '/login'
    else
      if @user=User.find_by(email: params[:user][:email])
        if @user.authenticate(params[:user][:password])
          session[:user_id]=@user.id
          redirect_to experiences_path
        else
          redirect_to '/login'
        end
      end
    end
  end

  def destroy
    session.delete :user_id
    redirect_to '/login'
  end

end
