class ApplicationController < ActionController::Base
    helper_method :logged_in?

    def current_user
        if session[:user_id]
            User.find(session[:user_id])
        end
    end

    def logged_in?
        !!current_user
    end

    def authorized
        if !logged_in?
            redirect_to login_path
        elsif param[:id].to_i != current_user.id 
            redirect_to user_path(current_user)
        end
    end
end
