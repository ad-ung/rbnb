class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @villa = Villa.find(params[:villa_id])
    @review.villa = @villa
    @review.user = current_user
    @review.save
    redirect_to booking_path(@villa.bookings.last)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
