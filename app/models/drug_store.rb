class DrugStore < ApplicationRecord
  has_many :prices
  has_many :drugs, through: :prices
end
