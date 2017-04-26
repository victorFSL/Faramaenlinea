class Coverage < ApplicationRecord
  has_many :drugs, through: :active_ingredients
  has_many :active_ingredients
end
