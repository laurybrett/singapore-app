class OrdersController < ApplicationController
  def new
    @shop = Shop.find(params[:shop_id])
    @cart = Cart.find(params[:cart_id])
    @user = User.find(current_user.id)
    @order = Order.new
  end

  def create
  end

  def show
  end

  def destroy
  end
end
