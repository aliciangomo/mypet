class Product < ApplicationRecord
  has_many :order_items, dependent: :destroy
  has_many :reviews, dependent: :destroy
  monetize :price_cents
end
