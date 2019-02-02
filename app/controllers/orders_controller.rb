class OrdersController < ApplicationController
  def new
    @shop = Shop.find(params[:shop_id])
    @cart = Cart.find(params[:cart_id])
    @user = User.find(current_user.id)
    @order = Order.new
  end

  def create
    @shop = Shop.find(params[:shop_id])
    @cart = Cart.find(params[:cart_id])
    @user = User.find(current_user.id)
    @order = Order.new
    @order.cart = @cart
    @order.save

    if @cart.save
      redirect_to shop_cart_order_path(@shop, @cart)
    else
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
  end
end
