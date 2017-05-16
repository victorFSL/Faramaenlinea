class Location < ApplicationRecord
  has_many :prices
  has_many :drugs, through: :prices
  has_many :drug_stores, through: :prices

  enum state_number: [ :santiago_de_los_caballeros, :santo_domingo] unless instance_methods.include? :state_number
end
