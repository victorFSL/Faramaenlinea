class LineItem < ApplicationRecord
  belongs_to :price
  belongs_to :cart
  enum payment_method: [ :tarjeta, :efectivo, :seguro]
  enum status: [ :shopping, :ordered, :confirmed]
  before_save :finalize


  def unit_price
    if persisted?
      self[:unit_price]
    else
      price.price
    end
  end
        
  def total_price
    price.price * quantity
  end

  private
    def product_present
      if price.status == "inactive"
        errors.add(:price, "Esta medicina esta temporalmente desabilitada")
      end
    end

    def finalize
      self[:unit_price] = unit_price
      self[:total_price] = quantity * self[:unit_price]
    end
end
