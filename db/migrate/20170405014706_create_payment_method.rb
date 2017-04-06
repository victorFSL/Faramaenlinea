class CreatePaymentMethod < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_methods do |t|
      t.string :name
      t.references :drug_store, foreign_key: true
    end
  end
end
