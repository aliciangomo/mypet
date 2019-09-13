class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy
  before_save :update_total
  before_create :update_status
  monetize :amount_cents
  enum status: { pending: "pending", paid: "paid", confirmed: "confirmed", completed: "completed",
    declined: "declined", rejected: "rejected" }

  def calculate_total
    self.order_items.collect { |item| item.product.price * item.quantity }.sum
  end

  private

  def update_status
    if self.status == nil?
      self.status = "In progress"
    end
  end

  def update_total
    self.amount = calculate_total
  end
end
