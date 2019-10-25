class ReservationsController < ApplicationController

    def new
        @user = user
        @reservation = Reservation.new
        @restaurant = Restaurant.find(params[:restaurant_id])
        @times = ["12:00pm", "12:30pm", "1:00pm", "1:30pm", "2:00pm", "2:30pm", "3:00pm", "3:30pm", "4:00pm", "4:30pm", "5:00pm", "5:30pm", "6:00pm", "6:30pm", "7:00pm", "7:30pm", "8:00pm", "8:30pm", "9:00pm", "9:30pm", "10:00pm", "10:30pm", "11:00pm"]
    end

    def create
        @user = user
        @reservation = Reservation.new(reservation_params)

        if @reservation.save
            redirect_to reservation_path(@reservation)
        else
            flash[:errors] = @reservation.errors.full_messages
            redirect_to new_reservation_path
        end
    end

    def show
        @user = user
        @reservation = find_reservation
    end

    def edit 
        @user = user
        @reservation = find_reservation
        @restaurant = @reservation.restaurant
        @times = ["12:00pm", "12:30pm", "1:00pm", "1:30pm", "2:00pm", "2:30pm", "3:00pm", "3:30pm", "4:00pm", "4:30pm", "5:00pm", "5:30pm", "6:00pm", "6:30pm", "7:00pm", "7:30pm", "8:00pm", "8:30pm", "9:00pm", "9:30pm", "10:00pm", "10:30pm", "11:00pm"]
    end 

    def update 
        @reservation = find_reservation
        @reservation.update(reservation_params)
        
        if @reservation.save 
            redirect_to reservation_path(@reservation)
        else
            flash[:errors] = @reservation.errors.full_messages
            redirect_to edit_reservation_path(@reservation)
        end 
    end 

    def destroy
        @reservation = Reservation.find(params[:id])
        @reservation.destroy!
        redirect_to user_path(user), :notice => "Your reservation has been deleted"
    end


    private

    def find_reservation
        Reservation.find(params[:id])
    end

    def user
        User.find(session[:user_id])
    end

    def reservation_params
        params.require(:reservation).permit(:reservation_time, :reservation_date, :party_size, :restaurant_id, :user_id)
    end
end
