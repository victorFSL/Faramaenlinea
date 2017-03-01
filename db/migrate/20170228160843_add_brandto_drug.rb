class AddBrandtoDrug < ActiveRecord::Migration[5.0]
  def change
    add_column :drugs, :brand, :string
  end
end
