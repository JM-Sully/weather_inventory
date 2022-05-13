class Item < ApplicationRecord
  has_many :item_warehouses, dependent: :destroy
  
  validates :name, presence: true
  validates :description, presence: true
end
