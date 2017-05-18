class LineItem < ApplicationRecord
  belongs_to :price
  belongs_to :cart
  enum payment_method: [ :Tarjeta, :Efectivo]
  before_save :finalize


  def unit_price
    if persisted?
      self[:unit_price]
    else
      price.price
    end
  end

  def unit_total_price
    price.price * quantity
  end

  def total_insured
    if insured
      unit_total_price * ( price.drug.active_ingredient.minimum_coverage_insurance.to_f/100)
    end
  end

  private
    def drug_present
      if price.status == "inactive"
        errors.add(:price, "Esta medicina esta temporalmente desabilitada")
      end
    end

    def finalize
      self[:unit_price] = unit_price
      self[:unit_total_price] = unit_total_price
    end
end
