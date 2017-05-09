class CreateActiveIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :active_ingredients do |t|
      t.string :name
      t.string :minimum_coverage_insurance, precision: 5, scale: 2
      t.boolean :under_insurance, default: false
      t.references :drug, foreign_key: true

      t.timestamps
    end
  end
end
