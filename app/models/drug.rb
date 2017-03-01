class Drug < ApplicationRecord
  has_many :prices
  has_many :stores, through: :prices

  validates :name, :active_ingredient, :description, :metric, :dosage, :brand, presence: true
  validates :dosage, numericality: {greater_than_or_equal_to: 0.01}
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "default.jpg"
  validates_attachment :picture, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  def name=(value)
    write_attribute(:name, value.capitalize)
  end

  def active_ingredient=(value)
    write_attribute(:active_ingredient, value.capitalize)
  end

  def brand=(value)
    write_attribute(:brand, value.capitalize)
  end
end
