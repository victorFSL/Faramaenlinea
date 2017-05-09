class DrugStoreLocation < ApplicationRecord
  belongs_to :location
  belongs_to :drug_store
end
