class LineItem < ApplicationRecord
  belongs_to :price
  belongs_to :cart
  enum payment_method: [ :tarjeta, :efectivo, :seguro]
  enum status: [ :shopping, :ordered, :confirmed]
end
