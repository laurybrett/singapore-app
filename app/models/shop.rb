class Shop < ApplicationRecord
  belongs_to :category
  has_many :boxes
end
