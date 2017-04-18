class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.integer :purchase_price
      t.integer :amount

      t.timestamps
    end
  end
end
