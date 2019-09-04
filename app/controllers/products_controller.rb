class ProductsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @products = Product.all.where("category = ?", params[:category])
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
    @review = Review.new
  end
end
