class CreatePaymentMethods < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_methods do |t|
      t.integer :payment_type
      t.boolean :accepts_insurance
      t.string :insurance_name

      t.references :drug_store, foreign_key: true
    end
  end
end
