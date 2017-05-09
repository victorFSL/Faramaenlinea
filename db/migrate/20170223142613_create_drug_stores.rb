class CreateDrugStores < ActiveRecord::Migration[5.0]
  def change
    create_table :drug_stores do |t|
      t.string :name
      t.string :address
      t.time :hour_open_regular
      t.time :hour_close_regular
      t.string :days_regular
      t.time :hour_open_other
      t.time :hour_close_other
      t.string :days_other

      t.timestamps
    end
  end
end
