class Cart < ApplicationRecord
  belongs_to :user
  has_one :order
  has_one :shop

end
