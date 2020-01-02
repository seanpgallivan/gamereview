class ApplicationController < ActionController::Base
    helper_method :logged_in?

    private

    def logged_in?
        !!session[:user_id]
    end
    
    def require_login
        if logged_in?
            @user = User.find(session[:user_id])
        else
            flash[:message] = "You must be logged in to see this content.\nPlease log in."
            redirect_to login_path
        end
    end

end