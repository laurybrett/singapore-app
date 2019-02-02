class Order < ApplicationRecord
  belongs_to :cart
  has_one :past_order

  after_create :new_past_order

  def compute_order(cart)
    @cart = cart
    @shop = Shop.where(shop_id: @shop_id)
    @order = Order.where(cart_id: @cart_id).first
    @code = @cart.shop.code

    if :code == @code then @order.save
    end
  end

  private

  def new_past_order
    PastOrder.new
  end
end
