class ApplicationController < ActionController::Base

    helper_method :current_user 
        def current_user  
            @current_user ||= User.find_by(id: session[:user_id])
            if session[:user_id] 
        end
    end
        def require_user  
            redirect_to 'session/login' unless current_user 
        end
end
