class CreateOrderedProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :ordered_products do |t|
      t.integer :product_id
      t.integer :order_id
    end
  end
end
