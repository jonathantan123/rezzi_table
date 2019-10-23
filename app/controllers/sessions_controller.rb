class SessionsController < ApplicationController

    def new #login page 
    end
 
    def create # creating new session to remain logged in
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else
            flash[:error] = "Username or Password is invalid!"
                  redirect_to login_path
                end
       
    end 

    def destroy
        session[:user_id] = nil
        redirect_to login_path, notice: "Logged out!"
      end
        


    

end 
