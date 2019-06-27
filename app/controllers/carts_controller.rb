class CartsController < ApplicationController

  def index
    @shop = Shop.find(params[:shop_id])
    @user = User.find(current_user.id)
    @carts = Cart.all
  end

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

    if @cart.save
      @order = @cart.order
      redirect_to edit_shop_cart_order_path(@shop, @cart, @order)
    else
      render :new
    end
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy

    redirect_to shop_carts_path
  end
end
