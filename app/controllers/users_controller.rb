class UsersController < ApplicationController
    # login page
    def index
        
    end

    # homepage page
    def show
    @user = User.find(session[:user])
    @reservations = @user.reservations
    end

    # create new account
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)

        if @user.save
            redirect to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :password)
    end
end
