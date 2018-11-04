class UsersController < ApplicationController

  def new
      if logged_in?
        @user = current_user
        redirect_to user_path(@user)
      else
        render :new
      end
    end

    def crop
    end

    def create
      @user = User.create(user_params)

      session[:user_id] = @user.id

      redirect_to experiences_path
    end

    def show
      @user=User.find(params[:id])
    end

    def edit
      @user=User.find(params[:id])
    end

    def update
      @user=User.find(params[:id])
      if @user.update_attributes(user_params)
        if params[:user][:avatar].present?
          render :crop
        else
        render :edit
        end
      end
    end

    private

      def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :about, :avatar)
      end

end
