class SessionController < ApplicationController
    def index 
        @user=User.new
    end

    def login
        islogged=false
        if !params[:user][:email].blank? and !params[:user][:encrypted_password].blank? 
            user = User.find_by(email: params[:user][:email].downcase, encrypted_password: params[:user][:encrypted_password].downcase)    
            if user
                session[:user_id]=user.id
                islogged=true
            end    
        end    
        if islogged
            redirect_to dashboard_session_index_path
        else 
            flash[:danger] = 'Invalid email/password combination' 
            @user=User.new
            render 'index'    
        end
    end    

    def dashboard
    end
end
