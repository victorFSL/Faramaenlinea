class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_drug_price(price)
    current_item = line_items.find_by(price_id: price.id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(price_id: price.id)
    end
    current_item
  end
end
