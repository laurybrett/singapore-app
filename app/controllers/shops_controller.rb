class ShopsController < ApplicationController
  #before_action :set_shop, only: [:show, :edit, :update, :destroy]

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def new
    @shop = Shop.new(shop_params)
    @shop.save
  end

  def create
    @category = Category.find(params[:category_id])
    @shop = Shop.new(shop_params)
    @shop.category = @category
    params[:shop]
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
    @shop.save
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :location, :code, :description, :price, :ex_price, :nb_box)
  end

  # def set_shop
  # @shop = Shop.find(params[:id])
  # end
end
