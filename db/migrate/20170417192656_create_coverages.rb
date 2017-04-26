class CreateCoverages < ActiveRecord::Migration[5.0]
  def change
    create_table :coverages do |t|
      t.string :minimum_coverage_insurance, precision: 5, scale: 2
      t.timestamps
    end
  end
end
