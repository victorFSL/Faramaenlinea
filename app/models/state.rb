class State < ApplicationRecord
  has_many :cities, dependent: :destroy
  has_many :drug_stores, through: :drug_store_locations
  has_many :drug_store_locations
end
