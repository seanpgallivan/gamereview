class SessionsController < ApplicationController

    def new
    end
  
    def create
      user = User.find_by(name: params[:user][:name])
      if user.try(:authenticate, params[:user][:password])
        session[:user_id] = user.id
        session[:user_name] = user.name
        redirect_to home_path
      else
        flash[:message] = ["Incorrect Login Information.","Please Try Again."]
        redirect_to login_path
      end
    end
  
    def destroy
      session.delete(:user_id)
      flash[:message] = ["Successfully Logged Out."]
      redirect_to welcome_path
    end

end