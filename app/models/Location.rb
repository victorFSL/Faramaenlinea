class Location < ApplicationRecord
  has_many :prices
  has_many :drugs, through: :prices
  has_many :drug_stores, through: :prices

end
