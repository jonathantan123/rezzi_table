class ReservationsController < ApplicationController
    def show
        # @user = User.find(params[:id])
        # @reservations = Reservation.where(user_id: @user.id)
        # @restaurant = @reservation.restaurant
        # @reservation = @user.reservations.find_by("id = ?", params[:reservation_id])
       @reservation = Reservation.find(params[:id])
    end

    private

    def reservation_params
        params.require(:reservations).permit(:user_id, :id)
    end
end
