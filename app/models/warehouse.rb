class Warehouse < ApplicationRecord
  has_many :item_warehouses
  
  validates :name, presence: true
  validates :city, presence: true
  # validates :country, presence: true

  def self.cities 
    [
      "Ottawa", 
      "Zarautz",
      "Mimizan",
      "Monmouth"
      "Birmingham",
    ]
  end
end
