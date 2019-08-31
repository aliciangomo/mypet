class ProductsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @products = Product.all.where("category = ?", params[:category])
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:product_id])
  end
end
