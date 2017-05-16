class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :state_number, default: "Santiago"
      t.string :city_name

      t.timestamps
    end
  end
end
