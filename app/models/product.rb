class Product < ApplicationRecord
  has_many :order_items, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
