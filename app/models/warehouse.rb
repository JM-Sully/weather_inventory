class Warehouse < ApplicationRecord
  has_many :item_warehouses, dependent: :destroy
  
  validates :name, presence: true
  validates :city, presence: true
  validates :country, presence: true
end
