class PastOrdersController < ApplicationController
  def new
    @order = Order.find(params[:order_id])
    @past_order = PastOrder.new
  end

  def create
    @order = Order.find(params[:order_id])
    @past_order = PastOrder.new
    @past_order.order = @order
    @past_order.save

    if @past_order.save
      redirect_to shop_cart_order_past_order_path(@shop, @cart, @order)
    else
      render :new
    end
  end

  def destroy
  end
end
