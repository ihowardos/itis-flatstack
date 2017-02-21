class AddPurchasePriceToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :purchase_price, :integer
  end
end
