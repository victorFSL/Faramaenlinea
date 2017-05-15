class Price < ApplicationRecord

  before_destroy :ensure_not_referenced_by_any_line_item

  belongs_to :drug
  belongs_to :drug_store
  belongs_to :location
  has_many :line_items

  enum status: [ :active, :inactive]

private
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end
end
