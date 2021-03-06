class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @review = Review.new
    # @product = Product.find(params[:product_id])
  end

  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(review_params)
    @review.product = @product
    @review.user = current_user
    if @review.save
      redirect_to product_path(@product)
    else
      render 'reviews/new'
    end
  end

  def index
    @reviews = Review.all.where("product, ?", param[:product_id])
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
