class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.integer :subtotal
      t.integer :total
      t.integer :order_status, default: 0
      t.timestamps
    end
  end
end
