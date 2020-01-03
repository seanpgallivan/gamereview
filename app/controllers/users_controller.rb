class UsersController < ApplicationController
    before_action :require_login, only: [:show, :edit, :update, :destroy]

    def show
    end

    def new
    end

    def create
        user = User.new(user_params)
        if user.save
            flash[:message] = ["Account Successfully Created.", "Please Log In."]
            redirect_to login_path
        else
            render :new
        end
    end

    def edit
    end

    def update
        @user.update_attributes(user_params)
        if @user.save
            flash[:message] = ["Account Successfully Updated."]
            redirect_to home_path
        else
            render :edit
        end
    end

    def destroy
        UserGame.where(user_id: session[:user_id]).destroy_all
        @user.destroy
        flash[:message] = ["The account for #{session[:user_name]} has been successfully deleted."]
        session.delete(:user_id)
        session.delete(:user_name)
        redirect_to welcome_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation, :favorite_game, :favorite_genre, :favorite_mode)
    end
    
end
