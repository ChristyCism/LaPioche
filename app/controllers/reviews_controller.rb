class ReviewsController < ApplicationController
  before_action :set_reviewee, only: [:new, :create, :index]

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.reviewee = @reviewee
    @review.save
    redirect_to reviewee_reviews_path(@reviewee)
  end

  def show
  end

  private

  def review_params
    params.require(:review).permit(:content, :title, :rating)
  end

  def set_reviewee
    @reviewee = Review.select(params[:reviewee_id])
  end
end
