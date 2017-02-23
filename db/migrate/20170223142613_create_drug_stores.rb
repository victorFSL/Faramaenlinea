class CreateDrugStores < ActiveRecord::Migration[5.0]
  def change
    create_table :drug_stores do |t|
      t.string :name
      t.string :address
      t.integer :hours
      t.string :payment_options
      t.string :logo
      t.integer :delivery_radius

      t.timestamps
    end
  end
end
