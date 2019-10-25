require 'date'

class UsersController < ApplicationController
    
    def index 
    end
    
    # homepage page
    def show
        return head(:forbidden) unless session.include? :user_id

        @user = User.find(session[:user_id])

        @upcoming_reservations = @user.reservations.select {|reservation| reservation.reservation_date.to_datetime > DateTime.now}
        @past_reservations = @user.reservations.select {|reservation| reservation.reservation_date.to_datetime < DateTime.now}
        @reviews = @user.reviews
    end

    # signup page - needs to be able to be shown if not logged in 
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to login_path
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to signup_path
        end
    end

    # def update 
    #     @user = User.new(user_params)
    #     @user.update(user_params)
    #     @user.save 
    # end 


    private

    def user_params
        params.require(:user).permit(:name, :username, :password, :password_confirmation, :image_id)
    end

end
