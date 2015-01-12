class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def create
    @review = Review.new(params[:review].permit!)

    @review.user_id = current_user.id

    @review.save

    redirect_to answers_path
  end
end
