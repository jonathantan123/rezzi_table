class ReservationsController < ApplicationController
    def show
        @user = User.find(params[:id])
        @reservations = @user.reservations
        # @restaurant = @reservation.restaurant
        @reservation = @user.reservations.find_by(params[:id])
    end

    private

    def reservation_params
        params.require(:reservations).permit(:user_id, :id)
    end
end
