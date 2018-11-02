class SessionsController < ApplicationController

  def new
    if logged_in?
      redirect_to experiences_path
    else
      render :new
    end
  end

  def create
    if params[:user][:email].blank? || params[:user][:password].blank?
      render :new
    else
      if @user=User.find_by(email: params[:user][:email])
        if @user.authenticate(params[:user][:password])
          session[:user_id]=@user.id
          redirect_to experiences_path
        else
          render :new
        end
      end
    end
  end

  def destroy
    session.delete :user_id
    redirect_to '/login'
  end

end
