class SessionsController < ApplicationController

    def new
        @user = User.new
    end
 
    def create
        user = User.find_by(username: params[:user][:username])
        
        session[:user] = user.id

        redirect_to user_path( session[:user])
    end

end 
