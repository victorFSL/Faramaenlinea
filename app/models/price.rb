class Price < ApplicationRecord

  before_destroy :ensure_not_referenced_by_any_line_item

  belongs_to :drug
  belongs_to :drug_store
  has_many :line_items
  
private
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end
end
