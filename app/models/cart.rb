class Cart < ApplicationRecord
  belongs_to :user
  has_one :order
  belongs_to :shop

end
