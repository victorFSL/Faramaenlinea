class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.integer :total_asegurado
      t.integer :order_status, default: 0
      t.integer :total_no_asegurado
      t.integer :total_general
      t.timestamps
    end
  end
end
