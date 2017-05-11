class CreatePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :prices do |t|
      t.belongs_to :drug, index: true
      t.belongs_to :drug_store, index: true
      t.integer :price
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
