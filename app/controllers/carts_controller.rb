class CartsController < ApplicationController
  def new
    @shop = Shop.find(params[:shop_id])
    @user = User.find(current_user.id)
    @cart = Cart.new
  end

  def create
    @shop = Shop.find(params[:shop_id])
    @cart = Cart.new
    @cart.shop = @shop
    @cart.user = current_user
    @cart.save
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
  end

end
