class CreateDrugs < ActiveRecord::Migration[5.0]
  def change
    create_table :drugs do |t|
      t.string :name
      t.text :description
      t.string :metric
      t.integer :dosage
      t.string :brand
      t.timestamps
    end
  end
end
