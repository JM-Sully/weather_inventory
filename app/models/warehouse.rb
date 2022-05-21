class Warehouse < ApplicationRecord
  has_many :item_warehouses
  
  validates :name, presence: true
  validates :city, presence: true

  CITIES = 
    [
      "Ottawa", 
      "Zarautz",
      "Mimizan",
      "Monmouth",
      "Birmingham"
    ]
end
