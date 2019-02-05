class Order < ApplicationRecord
  belongs_to :cart
  has_one :past_order

  after_create :new_past_order

  def compute_order
    @shop = Shop.where(shop_id: @shop_id)
    @cart = Cart.where(cart_id: @cart_id)
    @order = Order.where(cart_id: @cart_id).first
    @code_order = @order.cart.shop.code
  end

  private

  def new_past_order
    PastOrder.new(order: self)
  end

end
