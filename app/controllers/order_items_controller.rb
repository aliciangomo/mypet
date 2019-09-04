class OrderItemsController < ApplicationController
  skip_before_action :authenticate_user!
  # def index
  #   @order_items = current_order.order_items
  #   # @order.reviews = OrderItem.all.where("order, ?", current_order)
  # end

  def new
    @item = @order.order_items.new(item_params)
  end

  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.save!
    session[:order_id] = @order.id
    raise
    redirect_to cart_path
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    redirect_to cart_path
  end


  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
