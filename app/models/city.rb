class City < ApplicationRecord
  belongs_to :state
  has_many :drug_stores, through: :drug_store_locations
  has_many :drug_store_locations
end
