class ItemWarehouse < ApplicationRecord
  belongs_to :item
  belongs_to :warehouse

  validates :amount, presence: true, numericality: { only_integer: true }
  validates :item_id, presence: true 
  validates :warehouse_id, presence: true

  def weather_description
    data = weather_response
    data["weather"].first["description"]
  end

  def current_temp
    data = weather_response
    data["main"]["temp"]
  end 

  def min_temp
    data = weather_response
    data["main"]["temp_min"]
  end

  def max_temp
    data = weather_response
    data["main"]["temp_max"]
  end 

  def weather_response
    res = Openweather::Search.by_location(warehouse.city)
    data = JSON.parse res.body
  end
end
