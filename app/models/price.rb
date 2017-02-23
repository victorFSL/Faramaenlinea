class Price < ApplicationRecord
  belongs_to :drug
  belongs_to :drug_store
end
