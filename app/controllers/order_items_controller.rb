class OrderItemsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @order_items = current_order.order_items
    # @order.reviews = OrderItem.all.where("order, ?", current_order)
  end

  def new
    # @item = @order.order_items.new(item_params)
  end

  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.user = current_or_guest_user
    @order.save
    session[:order_id] = @order.id
    redirect_to cart_path
  end

  # def update
  #   @order = current_order
  #   @order_item = @order.order_item.find(params[:id])
  #   @order_item.update(item_params)
  #   @order_items = @order.order_items
  # end

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
