class ProductsController < ApplicationController
  def index
    @products = Product.all.where("category ' ?", params[:leggins])
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find

  end
end
