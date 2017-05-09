class Location < ApplicationRecord
  has_many :drug_stores, through: :drug_store_locations
  has_many :drug_store_locations
  enum state_id: [ :santiago]
end
