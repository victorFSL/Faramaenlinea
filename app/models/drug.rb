class Drug < ApplicationRecord
  has_many :prices
  has_many :stores, through: :prices

  validates :name, :active_ingredient, :description, :metric, :dosage, presence: true
  validates :dosage, numericality: {greater_than_or_equal_to: 0.01}
  validates :picture, allow_blank: true, format:{ with: %r{\.(gif|jpg|png)\Z}i, message: 'El formato tiene que ser una imagen GIF, JPG o PNG.'}
end
