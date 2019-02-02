class Cart < ApplicationRecord
  belongs_to :user
  has_one :order
  belongs_to :shop

  after_create :create_order

  private

  def create_order
    Order.create(cart: self)
  end
end
