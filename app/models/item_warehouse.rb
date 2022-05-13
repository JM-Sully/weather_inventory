class ItemWarehouse < ApplicationRecord
  belongs_to :item
  belongs_to :warehouse

  validates :amount, presence: true, numericality: { only_integer: true }
  validates :item_id, presence: true 
  validates :warehouse_id, presence: true
end
