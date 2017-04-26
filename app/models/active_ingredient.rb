class ActiveIngredient < ApplicationRecord
  belongs_to :coverage
  belongs_to :drug
end
