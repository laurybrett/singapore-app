class Shop < ApplicationRecord
  belongs_to :category
  has_many :carts
  has_many :orders, through: :carts


end
