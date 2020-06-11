class ReviewsController < ApplicationController
  def new
    @villa = Villa.find(params[:villa_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @villa = Villa.find(params[:villa_id])
    @review.villa = @villa
    @review.user = current_user
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
