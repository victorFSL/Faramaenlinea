class DrugStore < ApplicationRecord

  has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "default.jpg"
  validates_attachment :logo, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  has_many :prices
  has_many :drugs, through: :prices
  has_many :drug_store_locations
  has_many :locations, through: :drug_store_locations
  has_many :payment_methods

  def regular_hours
    'Abierto de ' + hour_open_regular.strftime(" %l:%M %p") + ' a ' + hour_close_regular.strftime(" %l:%M %p") + ' de ' + days_regular
  end

  def other_hours
    if hour_open_other != nil
      'y de ' + days_other + ' de ' + hour_open_other.strftime(" %l:%M %p") + ' a ' + hour_close_other.strftime(" %l:%M %p") + '.'
    end
  end
end
