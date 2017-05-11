class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  enum order_status: [ :shopping, :ordernado, :confirmado]
  before_save :update_subtotal

  def subtotal
    line_items.collect { |li| li.valid? ? (li.quantity * li.price.price) : 0 }.sum
  end

  private
    def update_subtotal
      self[:subtotal] = subtotal
    end
end
