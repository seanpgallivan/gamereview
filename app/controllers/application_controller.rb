class ApplicationController < ActionController::Base

    def logged_in?
        !!session[:user_id]
    end
    
    def require_login
        if !logged_in?
            flash[:message] = "You must be logged in to see this content. Please log in."
            redirect_to login_path
        end
    end

end