class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :state_number, default: 0
      t.string :city_name

      t.timestamps
    end
  end
end
