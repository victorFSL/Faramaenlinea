class CreatePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :prices do |t|
      t.integer :drug_store_id, index: true
      t.integer :drug_id, index: true
      t.integer :price

      t.timestamps
    end
  end
end
