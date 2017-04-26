class CreateActiveIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :active_ingredients do |t|
      t.string :name
      t.references :coverage, foreign_key: true
      t.references :drug, foreign_key: true

      t.timestamps
    end
  end
end
