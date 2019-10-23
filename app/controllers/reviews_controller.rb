class ReviewsController < ApplicationController
    before_action :authorized

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
        @review = Review.find_by(params[:id])
    end 

    def create 
        @review  = Review.new(review_params)
        @user = User.find(session[:user_id])
            if @review.save 
                redirect_to user_path(@user)
            else 
                flash[:errors] = @review.errors.full_messages 
                redirect_to new_review_path
            end 
    end 

    def edit 
        @review  = Review.find(params[:id])
        @user = User.find(session[:user_id])

        
    end 


    def update 
        @review  = Review.find(params[:id])
        @user = User.find(session[:user_id])
        @review.update(review_params)
        if @review.save 
            redirect_to user_path(@user)
        else 
            flash[:errors] = @review.errors.full_messages 
            redirect_to edit_review_path
        end 

    end 


    private 
    def review_params 
        params.require(:review).permit(:rating, :description, :reservation_id)
    end 


    def require_login
        return head(:forbidden) unless session.include? :user_id
      end
end
