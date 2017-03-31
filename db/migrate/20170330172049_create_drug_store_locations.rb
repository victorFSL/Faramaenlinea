class CreateDrugStoreLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :drug_store_locations do |t|
      t.references :state, foreign_key: true
      t.references :city, foreign_key: true
      t.references :drug_store, foreign_key: true
      t.timestamps
    end
  end
end
