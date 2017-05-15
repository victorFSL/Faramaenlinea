class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.integer :total_insured
      t.integer :order_status, default: 0
      t.integer :total_not_insured
      t.integer :total
      t.timestamps
    end
  end
end
