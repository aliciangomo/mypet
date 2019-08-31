class ChangeColorsInProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :colors, :text, array: true
    add_column :products, :sizes, :text, array: true
    remove_column :products, :color, :string
    remove_column :products, :size, :string
  end
end
