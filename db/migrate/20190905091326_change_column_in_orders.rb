class ChangeColumnInOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :total_amount_cents, :integer
    add_monetize :orders, :amount, currency: { present: false }
  end
end
