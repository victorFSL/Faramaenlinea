module CartsHelper

  def price_per_drug_store drug_store_iteration, cart
    @unit_total_price = []
    cart.line_items.each do |line_item|
      if line_item.price.drug_store == drug_store_iteration
        @unit_total_price << line_item.unit_total_price
      end
    end
  end

end
