class ReviewsController < ApplicationController
  # def index
  #   @reviews = Restaurant.review.find(params[:restaurant_id]
  # end
  before_action :find_review, only: [ :show, :edit, :update, :destroy ]

  def show
    # @restaurant = Restaurant.find(params[:restaurant_id])
    # @review = Review.find(params[:id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save
    redirect_to restaurants_path
  end

  def edit
    # @restaurant = Restaurant.find(params[:restaurant_id])
    # @review = Review.new
  end

  def update
    @review.update(review_params)
    redirect_to review_path
  end

  def destroy
    @review.destroy
    redirect_to restaurants_path
  end


  private

  def find_review
     @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
