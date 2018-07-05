class ApplicationController < ActionController::Base
    before_action :require_user
    # helper_method :current_user 
    #     def current_user  
    #         @current_user ||= User.find_by(id: session[:user_id])
    #         if session[:user_id] 
    #     end
    # end

    #Authenticate
        def require_user  
            redirect_to login_session_index_path unless session[:user_id] 
        end


end
