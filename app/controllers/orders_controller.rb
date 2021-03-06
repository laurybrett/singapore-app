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
    @order.code_validated == false
    @order.save


    if @cart.save
      redirect_to edit_shop_cart_order_path(@shop, @cart)
    else
      render :new
    end
  end

  def edit
    @shop = Shop.find(params[:shop_id])
    @cart = Cart.find(params[:cart_id])
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    @order.date_order = DateTime.now
    @order.code_validated_time = DateTime.now

    if @order.update(order_params)
      redirect_to allorders_path
    else
      render :edit
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def index #allorders button in navbar
    @orders = Order.all
  end

  def destroy
    @order = Order.find(params[:id])
    @cart = Cart.find(params[:cart_id])
    @user = User.find(current_user.id)

    @order.destroy

    redirect_to allorders_path
  end

  private

  def order_params
    params.require(:order).permit(:code_validated)
  end
end
