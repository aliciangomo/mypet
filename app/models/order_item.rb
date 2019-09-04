class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  monetize :amount_cents
end
