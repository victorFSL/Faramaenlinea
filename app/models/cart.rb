class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  enum order_status: [ :shopping, :ordernado, :confirmado]
end
