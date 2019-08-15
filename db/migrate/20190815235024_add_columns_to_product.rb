class AddColumnsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :category, :string
    add_column :products, :name, :string
    add_column :products, :description, :string
    add_column :products, :color, :string
    add_column :products, :size, :string
    add_column :products, :price, :integer
    add_column :products, :rating, :integer
  end
end
