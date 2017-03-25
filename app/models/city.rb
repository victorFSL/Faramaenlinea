class City < ApplicationRecord
  belongs_to :state
  has_many :drug_stores
end
