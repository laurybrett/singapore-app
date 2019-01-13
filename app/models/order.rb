class Order < ApplicationRecord
  belongs_to :cart
  has_one :past_order
end
