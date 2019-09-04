class AddColumnsToOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :total_price, :integer
    add_monetize :orders, :total_amount, currency: { present: false }
    add_column :orders, :payment, :jsonb
  end
end
