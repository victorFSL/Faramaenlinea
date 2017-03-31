class DrugStoreLocation < ApplicationRecord

  belongs_to :city
  belongs_to :state
  belongs_to :drug_store
  
end
