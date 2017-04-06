class CreateInsurance < ActiveRecord::Migration[5.0]
  def change
    create_table :insurances do |t|
      t.string :name
      t.references :drug_store, foreign_key: true
    end
  end
end
