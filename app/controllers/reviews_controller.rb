class ReviewsController < ApplicationController
    # before_action :authorized

    def new 
        @review  = Review.new 
        @user = User.find(session[:user_id])
        @reservations = @user.reservations
    end 

    def index 
        @user = User.find(session[:user_id])
        @reviews = @user.reviews 
    end 

    def show 
        @user = User.find(session[:user_id])
        @review  = @user.reviews.find(params[:id])
    end 

    def create 
        @user = User.find(session[:user_id])
        @review  = Review.new(review_params)
     
        if @review.save 
            redirect_to user_path(@user)
        else 
            flash[:errors] = @review.errors.full_messages 
            redirect_to new_review_path
        end 
    end 

    def edit 
        @user = User.find(session[:user_id])
        @review  = @user.reviews.find(params[:id])
    end 


    def update 
        @review  = Review.find(params[:id])
        @review.update(review_params)

        if @review.save 
            redirect_to review_path(@review)
        else 
            flash[:errors] = @review.errors.full_messages 
            redirect_to edit_review_path
        end 
    end 

    def destroy
        @user = User.find(session[:user_id])
        @review = @user.reviews.find(params[:id])
        @review.destroy
        
        redirect_to user_path(@user)
    end


    private 
    def review_params 
        params.require(:review).permit(:rating, :description, :reservation_id, :food_rating, :decor_rating, :service_rating)
    end 


    def require_login
        return head(:forbidden) unless session.include? :user_id
      end
end
